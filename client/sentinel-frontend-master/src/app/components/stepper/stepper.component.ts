import { Component, OnInit } from '@angular/core';
import { Location } from '@angular/common';
import { FormBuilder, Validators, FormControl, FormGroup, FormArray } from '@angular/forms';
import { BreakpointObserver } from '@angular/cdk/layout';
import { StepperOrientation } from '@angular/material/stepper';
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';
import { Router } from '@angular/router';
import { DataService } from '../../services/data.service';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'app-stepper',
  templateUrl: './stepper.component.html',
  styleUrls: ['./stepper.component.css']
})
export class StepperComponent implements OnInit {

  stepperOrientation: Observable<StepperOrientation>;

  isLinear = false;
  formGroup!: FormGroup;
  form!: FormArray;

  data!: any;

  active = 1;

  remark!: string;
  maxHouseholds!: number;
  numPeople!: number;
  employerName!: string;
  employmentAgencyName!: string;
  branchType!: string;

  numSameForms!: number;
  numDiffForms!: number;
  numSteps!: number;

  formControlValue: any;

  listReports!: any[];

  constructor(private _formBuilder: FormBuilder, breakpointObserver: BreakpointObserver,
    private location: Location, private router: Router, private dataService: DataService,
    private toastr: ToastrService) {

    this.stepperOrientation = breakpointObserver
      .observe('(min-width: 800px)')
      .pipe(map(({ matches }) => (matches ? 'horizontal' : 'vertical')));
  }

  ngOnInit(): void {

    this.data = this.location.getState();
    console.log(this.data);

    this.numSameForms = this.data.numSameForms;
    this.numDiffForms = this.data.numDiffForms;

    this.formGroup = this._formBuilder.group({
      form: this._formBuilder.array([])
    })

    this.numSteps = 0;

    if (this.numDiffForms == this.numSameForms) {
      this.numSteps = this.numDiffForms;
    } else {
      this.numSteps = this.data.numDiffForms + 1;
    }

    for (let i = 0; i < this.numSteps; i++) {
      this.form = this.formGroup.get('form') as FormArray;
      this.form.push(this.init());
    }

    this.listReports = new Array(this.numSteps);
  }



  // initalize the items of the report
  init() {

    return this._formBuilder.group({
      cont: new FormControl('', [Validators.required]),
      maxHouseholds: new FormControl('', [Validators.required]),
      numPeople: new FormControl('', [Validators.required]),
      employerName: new FormControl('', [Validators.required]),
      employmentAgencyName: new FormControl('', [Validators.required]),
      branchType: new FormControl('', [Validators.required]),
      remark: new FormControl('', [Validators.required]),

      q_ho_1: new FormControl('', [Validators.required]),
      q_ho_2: new FormControl('', [Validators.required]),
      q_ho_3: new FormControl('', [Validators.required]),
      q_ho_4: new FormControl('', [Validators.required]),
      q_ho_5: new FormControl('', [Validators.required]),
      q_ho_6: new FormControl('', [Validators.required]),
      q_ho_7: new FormControl('', [Validators.required]),
      q_ho_8: new FormControl('', [Validators.required]),
      q_ho_9: new FormControl('', [Validators.required]),
      q_ho_10: new FormControl('', [Validators.required]),
      q_ho_11: new FormControl('', [Validators.required]),
      q_ho_12: new FormControl('', [Validators.required]),
      q_ho_13: new FormControl('', [Validators.required]),
      q_ho_14: new FormControl('', [Validators.required]),
      q_ho_15: new FormControl('', [Validators.required]),

      q_he_1: new FormControl('', [Validators.required]),
      q_he_2: new FormControl('', [Validators.required]),
      q_he_3: new FormControl('', [Validators.required]),
      q_he_4: new FormControl('', [Validators.required]),
      q_he_5: new FormControl('', [Validators.required]),
      q_he_6: new FormControl('', [Validators.required]),
      q_he_7: new FormControl('', [Validators.required]),
      q_he_8: new FormControl('', [Validators.required]),
      q_he_9: new FormControl('', [Validators.required]),
      q_he_10: new FormControl('', [Validators.required]),
      q_he_11: new FormControl('', [Validators.required]),
      q_he_12: new FormControl('', [Validators.required]),

      q_pa_1: new FormControl('', [Validators.required]),
      q_pa_2: new FormControl('', [Validators.required]),
      q_pa_3: new FormControl('', [Validators.required]),
      q_pa_4: new FormControl('', [Validators.required]),
      q_pa_5: new FormControl('', [Validators.required]),
      q_pa_6: new FormControl('', [Validators.required]),
      q_pa_7: new FormControl('', [Validators.required]),
      q_pa_8: new FormControl('', [Validators.required]),
      q_pa_9: new FormControl('', [Validators.required]),
      q_pa_10: new FormControl('', [Validators.required]),
      q_pa_11: new FormControl('', [Validators.required]),
      q_pa_12: new FormControl('', [Validators.required]),
      q_pa_13: new FormControl('', [Validators.required]),
      q_pa_14: new FormControl('', [Validators.required]),
      q_pa_15: new FormControl('', [Validators.required]),
      q_pa_16: new FormControl('', [Validators.required]),

      q_em_1: new FormControl('', [Validators.required]),
      q_em_2: new FormControl('', [Validators.required]),
      q_em_3: new FormControl('', [Validators.required]),
      q_em_4: new FormControl('', [Validators.required]),
      q_em_5: new FormControl('', [Validators.required]),
      q_em_6: new FormControl('', [Validators.required]),
      q_em_7: new FormControl('', [Validators.required]),
      q_em_8: new FormControl('', [Validators.required]),
      q_em_9: new FormControl('', [Validators.required]),
      q_em_10: new FormControl('', [Validators.required]),
      q_em_11: new FormControl('', [Validators.required]),
      q_em_12: new FormControl('', [Validators.required]),
      q_em_13: new FormControl('', [Validators.required]),
      q_em_14: new FormControl('', [Validators.required]),
      q_em_15: new FormControl('', [Validators.required]),
      q_em_16: new FormControl('', [Validators.required]),
      q_em_17: new FormControl('', [Validators.required]),
      q_em_18: new FormControl('', [Validators.required]),
      q_em_19: new FormControl('', [Validators.required]),
      q_em_20: new FormControl('', [Validators.required]),
      q_em_21: new FormControl('', [Validators.required]),
      q_em_22: new FormControl('', [Validators.required]),
      q_em_23: new FormControl('', [Validators.required]),
      q_em_24: new FormControl('', [Validators.required]),
      q_em_25: new FormControl('', [Validators.required]),

      q_la_1: new FormControl('', [Validators.required]),
      q_la_2: new FormControl('', [Validators.required]),
      q_la_3: new FormControl('', [Validators.required]),
      q_la_4: new FormControl('', [Validators.required]),
      q_la_5: new FormControl('', [Validators.required]),
      q_la_6: new FormControl('', [Validators.required]),
      q_la_7: new FormControl('', [Validators.required]),
      //q_la_8: new FormControl('', [Validators.required]),
      q_la_9: new FormControl('', [Validators.required]),
      q_la_10: new FormControl('', [Validators.required]),
      q_la_11: new FormControl('', [Validators.required]),
      q_la_12: new FormControl('', [Validators.required]),
      q_la_13: new FormControl('', [Validators.required]),
      q_la_14: new FormControl('', [Validators.required]),
      q_la_15: new FormControl('', [Validators.required]),
      q_la_16: new FormControl('', [Validators.required]),
      q_la_17: new FormControl('', [Validators.required]),
      q_la_18: new FormControl('', [Validators.required]),
    })

  }


  // control method for the report tabs
  next = () => {
    if (this.active < 7) this.active = this.active + 1;
  }

  // control method for the report tabs
  previous = () => {
    if (this.active > 1) this.active = this.active - 1;
  }

  // move the stepper to the next report
  goToNextReport = (index: number) => {

    this.active = 1;

    var report: any = new Object();

    report.remark = this.form.at(index).get('remark')!.value;
    report.address = this.data.address;
    report.maxHouseholds = this.form.at(index).get('maxHouseholds')!.value;
    report.numPeople = this.form.at(index).get('numPeople')!.value;
    report.employerName = this.form.at(index).get('employerName')!.value;
    report.employmentAgencyName = this.form.at(index).get('employmentAgencyName')!.value;
    report.branchType = this.form.at(index).get('branchType')!.value;

    report.hasAnySituationChecked = this.checkSituations(report, index);

    if (index == 0) {
      report.numRepeatedReports = this.numSameForms - this.numDiffForms;
    } else {
      report.numRepeatedReports = 1;
    }

    if ((index == 0) && (this.numDiffForms != this.numSameForms) && (this.numSameForms - this.numDiffForms == 1)) {
      report.title = 'Individu #' + (this.numSameForms - this.numDiffForms);
    } else if ((index == 0) && (this.numDiffForms != this.numSameForms) && (this.numSameForms - this.numDiffForms != 1)) {
      report.title = 'Groep #' + (this.numSameForms - this.numDiffForms) + ' Personen';
    } else if ((index == 0) && (this.numDiffForms == this.numSameForms)) {
      report.title = 'Individu #' + (this.numSameForms - this.numDiffForms + 1);
    } else if ((index != 0) && (this.numDiffForms == this.numSameForms)) {
      report.title = 'Individu #' + (this.numSameForms - this.numDiffForms + 1 + index);
    } else {
      report.title = 'Individu #' + (this.numSameForms - this.numDiffForms + index);
    }

    this.listReports.splice(index, 1, report);

  }

  // prepare the report with the situations to be properly saved in the database
  private checkSituations(report: any, index: number): boolean {

    var hasAnySituationChecked = false;

    // Housing
    if (this.form.at(index).get('q_ho_1')!.value == true) {
      report.q_ho_1 = "q_ho_1";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_ho_2')!.value == true) {
      report.q_ho_2 = "q_ho_2";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_ho_3')!.value == true) {
      report.q_ho_3 = "q_ho_3";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_ho_4')!.value == true) {
      report.q_ho_4 = "q_ho_4";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_ho_5')!.value == true) {
      report.q_ho_5 = "q_ho_5";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_ho_6')!.value == true) {
      report.q_ho_6 = "q_ho_6";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_ho_7')!.value == true) {
      report.q_ho_7 = "q_ho_7";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_ho_8')!.value == true) {
      report.q_ho_8 = "q_ho_8";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_ho_9')!.value == true) {
      report.q_ho_9 = "q_ho_9";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_ho_10')!.value == true) {
      report.q_ho_10 = "q_ho_10";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_ho_11')!.value == true) {
      report.q_ho_11 = "q_ho_11";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_ho_12')!.value == true) {
      report.q_ho_12 = "q_ho_12";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_ho_13')!.value == true) {
      report.q_ho_13 = "q_ho_13";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_ho_14')!.value == true) {
      report.q_ho_14 = "q_ho_14";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_ho_15')!.value == true) {
      report.q_ho_15 = "q_ho_15";
      hasAnySituationChecked = true;
    }

    // Health
    if (this.form.at(index).get('q_he_1')!.value == true) {
      report.q_he_1 = "q_he_1";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_he_2')!.value == true) {
      report.q_he_2 = "q_he_2";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_he_3')!.value == true) {
      report.q_he_3 = "q_he_3";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_he_4')!.value == true) {
      report.q_he_4 = "q_he_4";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_he_5')!.value == true) {
      report.q_he_5 = "q_he_5";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_he_6')!.value == true) {
      report.q_he_6 = "q_he_6";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_he_7')!.value == true) {
      report.q_he_7 = "q_he_7";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_he_8')!.value == true) {
      report.q_he_8 = "q_he_8";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_he_9')!.value == true) {
      report.q_he_9 = "q_he_9";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_he_10')!.value == true) {
      report.q_he_10 = "q_he_10";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_he_11')!.value == true) {
      report.q_he_11 = "q_he_11";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_he_12')!.value == true) {
      report.q_he_12 = "q_he_12";
      hasAnySituationChecked = true;
    }

    // Payment
    if (this.form.at(index).get('q_pa_1')!.value == true) {
      report.q_pa_1 = "q_pa_1";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_pa_2')!.value == true) {
      report.q_pa_2 = "q_pa_2";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_pa_3')!.value == true) {
      report.q_pa_3 = "q_pa_3";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_pa_4')!.value == true) {
      report.q_pa_4 = "q_pa_4";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_pa_5')!.value == true) {
      report.q_pa_5 = "q_pa_5";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_pa_6')!.value == true) {
      report.q_pa_6 = "q_pa_6";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_pa_7')!.value == true) {
      report.q_pa_7 = "q_pa_7";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_pa_8')!.value == true) {
      report.q_pa_8 = "q_pa_8";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_pa_9')!.value == true) {
      report.q_pa_9 = "q_pa_9";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_pa_10')!.value == true) {
      report.q_pa_10 = "q_pa_10";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_pa_11')!.value == true) {
      report.q_pa_11 = "q_pa_11";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_pa_12')!.value == true) {
      report.q_pa_12 = "q_pa_12";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_pa_13')!.value == true) {
      report.q_pa_13 = "q_pa_13";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_pa_14')!.value == true) {
      report.q_pa_14 = "q_pa_14";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_pa_15')!.value == true) {
      report.q_pa_15 = "q_pa_15";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_pa_16')!.value == true) {
      report.q_pa_16 = "q_pa_16";
      hasAnySituationChecked = true;
    }

    // Employer
    if (this.form.at(index).get('q_em_1')!.value == true) {
      report.q_em_1 = "q_em_1";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_em_2')!.value == true) {
      report.q_em_2 = "q_em_2";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_em_3')!.value == true) {
      report.q_em_3 = "q_em_3";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_em_4')!.value == true) {
      report.q_em_4 = "q_em_4";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_em_5')!.value == true) {
      report.q_em_5 = "q_em_5";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_em_6')!.value == true) {
      report.q_em_6 = "q_em_6";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_em_7')!.value == true) {
      report.q_em_7 = "q_em_7";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_em_8')!.value == true) {
      report.q_em_8 = "q_em_8";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_em_9')!.value == true) {
      report.q_em_9 = "q_em_9";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_em_10')!.value == true) {
      report.q_em_10 = "q_em_10";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_em_11')!.value == true) {
      report.q_em_11 = "q_em_11";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_em_12')!.value == true) {
      report.q_em_12 = "q_em_12";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_em_13')!.value == true) {
      report.q_em_13 = "q_em_13";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_em_14')!.value == true) {
      report.q_em_14 = "q_em_14";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_em_15')!.value == true) {
      report.q_em_15 = "q_em_15";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_em_16')!.value == true) {
      report.q_em_16 = "q_em_16";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_em_17')!.value == true) {
      report.q_em_17 = "q_em_17";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_em_18')!.value == true) {
      report.q_em_18 = "q_em_18";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_em_19')!.value == true) {
      report.q_em_19 = "q_em_19";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_em_20')!.value == true) {
      report.q_em_20 = "q_em_20";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_em_21')!.value == true) {
      report.q_em_21 = "q_em_21";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_em_22')!.value == true) {
      report.q_em_22 = "q_em_22";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_em_23')!.value == true) {
      report.q_em_23 = "q_em_23";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_em_24')!.value == true) {
      report.q_em_24 = "q_em_24";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_em_25')!.value == true) {
      report.q_em_25 = "q_em_25";
      hasAnySituationChecked = true;
    }

    // Labor
    if (this.form.at(index).get('q_la_1')!.value == true) {
      report.q_la_1 = "q_la_1";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_la_2')!.value == true) {
      report.q_la_2 = "q_la_2";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_la_3')!.value == true) {
      report.q_la_3 = "q_la_3";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_la_4')!.value == true) {
      report.q_la_4 = "q_la_4";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_la_5')!.value == true) {
      report.q_la_5 = "q_la_5";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_la_6')!.value == true) {
      report.q_la_6 = "q_la_6";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_la_7')!.value == true) {
      report.q_la_7 = "q_la_7";
      hasAnySituationChecked = true;
    }
    /*if (this.form.at(index).get('q_la_8')!.value == true) {
      report.q_la_8 = "q_la_8";
      hasAnySituationChecked = true;
    }*/
    if (this.form.at(index).get('q_la_9')!.value == true) {
      report.q_la_9 = "q_la_9";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_la_10')!.value == true) {
      report.q_la_10 = "q_la_10";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_la_11')!.value == true) {
      report.q_la_11 = "q_la_11";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_la_12')!.value == true) {
      report.q_la_12 = "q_la_12";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_la_13')!.value == true) {
      report.q_la_13 = "q_la_13";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_la_14')!.value == true) {
      report.q_la_14 = "q_la_14";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_la_15')!.value == true) {
      report.q_la_15 = "q_la_15";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_la_16')!.value == true) {
      report.q_la_16 = "q_la_16";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_la_17')!.value == true) {
      report.q_la_17 = "q_la_17";
      hasAnySituationChecked = true;
    }
    if (this.form.at(index).get('q_la_18')!.value == true) {
      report.q_la_18 = "q_la_18";
      hasAnySituationChecked = true;
    }

    return hasAnySituationChecked;
  }

  // save the reports in the database
  submit = () => {

    console.log("saving in db the following reports:")
    console.log(this.listReports);

    for (let i = 0; i < this.listReports.length; i++) {

      if (!this.listReports[i].hasAnySituationChecked) {

        this.toastr.error('Er zijn rapporten zonder geselecteerde indicatoren. Selecteer ten minste één indicator.', 'Let op!');
        return;
      }
    }

    this.dataService.saveReports(this.listReports).subscribe((response: any) => {

      var data: any = new Object();
      data.totalReports = response;

      // console.log(response);

      this.router.navigateByUrl('/reportSaved', { state: data });

    })
  }

  checkDuplicates(event: Event, index: number) {
    const className = (event.target as HTMLInputElement).className
    const isChecked = (event.target as HTMLInputElement).checked
    const value = (event.target as HTMLInputElement).value

    this.formControlValue = this.form.at(index).get(value)!.value
    if (this.formControlValue == true)
      this.formControlValue = false
    else
      this.formControlValue = true
    
    if (className.includes('duplicate')){
      const realClassName = className.substring(className.indexOf("chbx_d"), className.indexOf("duplicate"));
      const chbxs = document.getElementsByClassName(realClassName);

      for (let i = 0; i < chbxs.length; i++) {
        const el = chbxs[i] as HTMLInputElement;
        el.checked = isChecked;
        this.form.at(index).get(el.value)!.setValue(this.formControlValue);
      }

    }
  }

}
