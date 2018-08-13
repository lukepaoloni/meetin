<template>
    <div>
        <input placeholder="Search for a venue near you..." autocomplete="off" name="search" type="text" class="form-control search-1" ref="autocomplete" onfocus="value = ''" />
    </div>
</template>

<script>
    export default {
        mounted() {
            this.autocomplete = new google.maps.places.Autocomplete(
                (this.$refs.autocomplete),
                {types: ['geocode']}
            );
            this.autocomplete.addListener('place_changed', () => {
                let place = this.autocomplete.getPlace();
                let ac = place.address_components;
                let lat = place.geometry.location.lat();
                let lon = place.geometry.location.lng();
                let city = ac[0]["short_name"];

                console.log(`The user picked ${city} with coordinates ${lat}, ${long}`);
            });
        }
    }
</script>
