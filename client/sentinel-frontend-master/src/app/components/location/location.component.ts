import { Component, Input, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { ToastrService } from 'ngx-toastr';
import { DataService } from 'src/app/services/data.service';

@Component({
  selector: 'app-location',
  templateUrl: './location.component.html',
  styleUrls: ['./location.component.css']
})
export class LocationComponent implements OnInit {

  map!: google.maps.Map;
  startingPosition!: google.maps.LatLngLiteral;
  marker!: google.maps.Marker;
  searchBox!: google.maps.places.SearchBox;

  searchBoxInput!: HTMLInputElement;
  numberInput!: HTMLInputElement;
  additionInput!: HTMLInputElement;

  data: any;

  streetId!: string;
  numberId!: string;
  additionId!: string;
  cityId!: string;
  provinceId!: string;
  postalCodeId!: string;
  latitude!: Number;
  longitude!: Number;

  constructor(private dataService: DataService, private router: Router, private toastr: ToastrService) { }

  ngOnInit(): void {
    this.createMap();
    this.createSearchBox();
  }

  createMap() {

    navigator.geolocation.getCurrentPosition((position: GeolocationPosition) => {

      //Current coordinates
      this.startingPosition = {
        lat: position.coords.latitude,
        lng: position.coords.longitude,
      }

      //Create the map
      this.map = new google.maps.Map(document.getElementById("map")!, {
        center: this.startingPosition,
        zoom: 18,
        fullscreenControl: false,
        streetViewControl: false,
        zoomControl: false,
        clickableIcons: false
      })

      //Create the marker
      this.marker = new google.maps.Marker({
        position: this.startingPosition,
        map: this.map,
      })

      this.fillFieldsMarker(this.startingPosition);

      this.latitude = this.startingPosition.lat;
      this.longitude = this.startingPosition.lng;

      // console.log("LAT START:" + this.latitude);
      // console.log("LNG START:" + this.longitude);

      //Map click
      this.map.addListener("click", (_mouseClick: any) => {

        var latitude = _mouseClick.latLng.lat();
        var longitude = _mouseClick.latLng.lng();

        let newPosition: google.maps.LatLngLiteral;
        newPosition = {
          lat: latitude,
          lng: longitude
        }

        this.marker.setPosition(newPosition);
        this.fillFieldsMarker(newPosition);

        this.latitude = newPosition.lat;
        this.longitude = newPosition.lng;

        // console.log("LAT CLICK:" + this.latitude);
        // console.log("LNG CLICK:" + this.longitude);

      });

    })
  }

  createSearchBox() {

    //Take the input address
    this.searchBoxInput = document.getElementById("searchBarId") as HTMLInputElement;

    //Create the search bar
    this.searchBox = new google.maps.places.SearchBox(this.searchBoxInput);

    this.searchBox.addListener("places_changed", () => {

      var places = this.searchBox.getPlaces()!;
      var bounds = new google.maps.LatLngBounds();

      //Chose place
      places.forEach((place) => {

        this.resetFields();

        if (!place.geometry || !place.geometry.location) {
          return;
        }

        if (place.geometry.viewport) {
          bounds.union(place.geometry.viewport);
        } else {
          bounds.extend(place.geometry.location);
        }

        this.marker.setPosition(place.geometry.location);
        this.map.fitBounds(bounds);
        this.fillFieldsSearchBox(place);

        this.latitude = place.geometry!.location.lat();
        this.longitude = place.geometry!.location.lng();

        // console.log("LAT SEARCH:" + this.latitude);
        // console.log("LNG SEARCH:" + this.longitude);

        let newPosition: google.maps.LatLngLiteral;
        newPosition = {
          lat: place.geometry.location.lat(),
          lng: place.geometry.location.lng(),
        }

      });

    });
  }

  resetPosition() {

    this.createMap();

    //this.map.setCenter(this.startingPosition);
    //this.map.setZoom(18);

    //this.marker.setPosition(this.startingPosition);

    (<HTMLInputElement>document.getElementById("searchBarId")).value = "";
    this.fillFieldsMarker(this.startingPosition);
  }

  resetFields() {
    (<HTMLInputElement>document.getElementById("numberId")).value = "";
    (<HTMLInputElement>document.getElementById("streetId")).value = "";
    (<HTMLInputElement>document.getElementById("additionId")).value = "";
    (<HTMLInputElement>document.getElementById("cityId")).value = "";
    (<HTMLInputElement>document.getElementById("provinceId")).value = "";
    (<HTMLInputElement>document.getElementById("postalCodeId")).value = "";
  }

  fillFieldsSearchBox(position: google.maps.places.PlaceResult) {

    //Fill all fields
    position.address_components?.forEach((component) => {

      if (component.types.includes("street_number")) {
        (<HTMLInputElement>document.getElementById("numberId")).value = this.findNumbers(component.short_name);
        (<HTMLInputElement>document.getElementById("additionId")).value = this.findAddition(component.short_name);
      }

      if (component.types.includes("route")) {
        (<HTMLInputElement>document.getElementById("streetId")).value = component.short_name;
      }

      if (component.types.includes("locality")) {
        (<HTMLInputElement>document.getElementById("cityId")).value = component.short_name;
      }

      if (component.types.includes("administrative_area_level_1")) {
        (<HTMLInputElement>document.getElementById("provinceId")).value = component.long_name;
      }

      if (component.types.includes("postal_code")) {
        (<HTMLInputElement>document.getElementById("postalCodeId")).value = component.short_name;
      }

    });
  }

  fillFieldsMarker(position: google.maps.LatLngLiteral) {

    const geocoder = new google.maps.Geocoder();

    geocoder.geocode({ location: position }, (results, status) => {
      if (status !== google.maps.GeocoderStatus.OK) {
        alert(status);
      }

      if (status == google.maps.GeocoderStatus.OK) {

        //Fill all fields
        results[0].address_components.forEach((component) => {
          if (component.types.includes("street_number")) {
            (<HTMLInputElement>document.getElementById("numberId")).value = this.findNumbers(component.short_name);
            (<HTMLInputElement>document.getElementById("additionId")).value = this.findAddition(component.short_name);
          }

          if (component.types.includes("route")) {
            (<HTMLInputElement>document.getElementById("streetId")).value = component.short_name;
          }

          if (component.types.includes("locality")) {
            (<HTMLInputElement>document.getElementById("cityId")).value = component.short_name;
          }

          if (component.types.includes("administrative_area_level_1")) {
            (<HTMLInputElement>document.getElementById("provinceId")).value = component.long_name;
          }

          if (component.types.includes("postal_code")) {
            (<HTMLInputElement>document.getElementById("postalCodeId")).value = component.short_name;
          }
        })
      }
    });
  }

  findNumbers(street_number: string) {

    var numbers = /[0-9]+/g.exec(street_number);
    var addition = "";

    if (numbers) {

      for (let index = 0; index < numbers.length; index++) {
        addition = addition + numbers[index];
      }

      return addition;
    }

    return addition;
  }

  findAddition(street_number: string) {

    var letters = /[a-zA-Z]+/g.exec(street_number);
    var addition = "";

    if (letters) {

      for (let index = 0; index < letters.length; index++) {
        addition = addition + letters[index];
      }

      return addition;
    }

    return addition;
  }

  public checkAddress(): void {

    var street = (<HTMLInputElement>document.getElementById("streetId")).value;
    var number = (<HTMLInputElement>document.getElementById("numberId")).value;
    var addition = (<HTMLInputElement>document.getElementById("additionId")).value;
    var city = (<HTMLInputElement>document.getElementById("cityId")).value;
    var province = (<HTMLInputElement>document.getElementById("provinceId")).value;
    var postcode = (<HTMLInputElement>document.getElementById("postalCodeId")).value;

    if (/*!street || !number || */!city || !province || !postcode) {
      // alert('Het huisnummer ontbreekt. Vul alstublieft het volledige adres in.');
      this.toastr.error('Het huisnummer ontbreekt. Vul alstublieft het volledige adres in.', 'Let op!');
      return;
    }

    var address: any = new Object();
    address.street = street;
    address.number = number;
    address.addition = addition.toUpperCase();
    address.postcode = postcode;
    address.city = city;
    address.province = province;
    //address.latitude = this.startingPosition.lat;
    //address.longitude = this.startingPosition.lng;
    address.latitude = this.latitude;
    address.longitude = this.longitude;

    // console.log(address);

    this.dataService.checkAddress(address).subscribe((response: any) => {

      this.data = response;

      if (this.data.address == null) {

        this.router.navigateByUrl('/numberPeople', { state: address });

      } else {

        this.router.navigateByUrl('/previousReports', { state: this.data });
      }
    })
  }

}
