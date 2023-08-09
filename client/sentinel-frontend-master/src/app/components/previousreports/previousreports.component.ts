import { Location } from '@angular/common';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Address } from 'src/app/classes/Address';
import { Report } from 'src/app/classes/Report';

@Component({
  selector: 'app-previousreports',
  templateUrl: './previousreports.component.html',
  styleUrls: ['./previousreports.component.css']
})
export class PreviousreportsComponent implements OnInit {

  data: any;
  address!: Address;
  reports!: Report[];

  constructor(private location: Location, private router: Router) { }

  ngOnInit(): void {
    this.data = this.location.getState();
    this.address = this.data.address;
    this.reports = this.data.reports;
  }

  public goToNumberPeople(): void {
    this.router.navigateByUrl('/numberPeople', { state: this.address });
  }

  get sortedReports() {
    return this.data.reports.sort((date1: any, date2: any) => {
      return <any>new Date(date2.reportTime) - <any>new Date(date1.reportTime);
    });
  }

}
