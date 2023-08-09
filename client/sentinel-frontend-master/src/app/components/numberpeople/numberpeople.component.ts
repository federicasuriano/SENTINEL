import { Location } from '@angular/common';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'app-numberpeople',
  templateUrl: './numberpeople.component.html',
  styleUrls: ['./numberpeople.component.css']
})
export class NumberpeopleComponent implements OnInit {

  numSameForms!: number;
  numDiffForms!: number;
  address!: any;

  constructor(private location: Location, private router: Router, private toastr: ToastrService) { }

  ngOnInit(): void {
    this.address = this.location.getState();
  }

  checkNumberOfPeople(numSameForms: number, numDiffForms: number): void {

    if ((numDiffForms === undefined || numDiffForms === null))
      numDiffForms = 0
    if ((numSameForms === undefined || numSameForms === null) || (numDiffForms === undefined || numDiffForms === null)) {
      // alert('Vul hier het aantal personen in.');
      this.toastr.error('Vul hier het aantal personen in.', 'Let op!');
      return;
    }

    if ((numSameForms < 1) || (numDiffForms < 0)) {
      // alert('Gelieve positieve getallen in te voeren.');
      this.toastr.error('Gelieve positieve getallen in te voeren.', 'Let op!');
      return;
    }

    if (numSameForms < numDiffForms) {
      // alert('Het eerste getal moet groter zijn dan het tweede.');
      this.toastr.error('Het eerste getal moet groter zijn dan het tweede.', 'Let op!');
      return;
    }

    var data: any = new Object();
    data.numSameForms = numSameForms;
    data.numDiffForms = numDiffForms;
    data.address = this.address;
    this.router.navigateByUrl('/stepper', { state: data });

  }

}
