import { Location } from '@angular/common';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-reportsaved',
  templateUrl: './reportsaved.component.html',
  styleUrls: ['./reportsaved.component.css']
})
export class ReportsavedComponent implements OnInit {

  data!: any;

  constructor(private location: Location) { }

  ngOnInit(): void {
    this.data = this.location.getState();
  }

}
