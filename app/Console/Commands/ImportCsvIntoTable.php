<?php

namespace App\Console\Commands;

use App\Venue;
use Illuminate\Console\Command;
use League\Csv\Exception;
use League\Csv\Reader;
use App\Country;

class ImportCsvIntoTable extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'import:csv {table}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Import CSV into table.';
    
    /**
     * Create a new command instance.
     *
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        $table = $this->argument('table');
        $csv = $this->ask('Where is the CSV file located?');
        $this->importCsv( $csv );
    }
    
    /**
     * @param $file
     *
     */
    public function importCsv($file)
    {
        $csvs = $this->formatCsv($file);
        $bar = $this->output->createProgressBar(count($csvs));
        foreach ($csvs as $csv) {
            Venue::create($csv);
            $bar->advance();
        }
        $bar->finish();
    }
    
    public function formatCsv($file)
    {
        $csv = array_map("str_getcsv", file($file,FILE_SKIP_EMPTY_LINES));
        $keys = array_shift($csv);
        foreach ($csv as $i=>$row) {
            $csv[$i] = array_combine($keys, $row);
        }
        return $csv;
    }
}
