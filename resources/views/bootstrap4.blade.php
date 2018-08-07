<ul class="navbar-nav ml-auto">
    @foreach($items as $menu_item)
        <li class="nav-item mx-3">
            <a href="{{ $menu_item->link() }}" class="nav-link">{{ $menu_item->title }}</a>
        </li>
    @endforeach
</ul>
