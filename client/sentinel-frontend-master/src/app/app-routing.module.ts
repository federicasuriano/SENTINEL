import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { LocationComponent } from './components/location/location.component';
import { NumberpeopleComponent } from './components/numberpeople/numberpeople.component';
import { PreviousreportsComponent } from './components/previousreports/previousreports.component';
import { ReportsavedComponent } from './components/reportsaved/reportsaved.component';
import { WelcomeComponent } from './components/welcome/welcome.component';
import { StepperComponent } from './components/stepper/stepper.component';
import { AuthGuard } from './utility/app.guard';

const routes: Routes = [
  { path: '', redirectTo: '/welcome', pathMatch: 'full' },
  { path: 'welcome', component: WelcomeComponent, canActivate: [AuthGuard] },
  { path: 'location', component: LocationComponent, canActivate: [AuthGuard] },
  { path: 'previousReports', component: PreviousreportsComponent, canActivate: [AuthGuard] },
  { path: 'numberPeople', component: NumberpeopleComponent, canActivate: [AuthGuard] },
  { path: 'reportSaved', component: ReportsavedComponent, canActivate: [AuthGuard] },
  { path: 'stepper', component: StepperComponent, canActivate: [AuthGuard] },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
