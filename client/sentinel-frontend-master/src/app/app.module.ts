import { APP_INITIALIZER, NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { KeycloakAngularModule, KeycloakService } from 'keycloak-angular';
import { initializeKeycloak } from './utility/app.ini';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { HeaderComponent } from './components/header/header.component';
import { WelcomeComponent } from './components/welcome/welcome.component';
import { HttpClientModule } from '@angular/common/http';
import { DataService } from './services/data.service';
import { LoginService } from './services/login.service';
import { PreviousreportsComponent } from './components/previousreports/previousreports.component';
import { NumberpeopleComponent } from './components/numberpeople/numberpeople.component';
import { LocationComponent } from './components/location/location.component';
import { ReportsavedComponent } from './components/reportsaved/reportsaved.component';
import { StepperComponent } from './components/stepper/stepper.component';
import { MatStepperModule } from '@angular/material/stepper';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatInputModule } from '@angular/material/input';
import { MatExpansionModule } from '@angular/material/expansion';
import { ToastrModule } from 'ngx-toastr';

const MaterialComponents = [
  MatStepperModule,
  MatFormFieldModule,
  MatExpansionModule,
  MatInputModule,
]

@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    WelcomeComponent,
    PreviousreportsComponent,
    NumberpeopleComponent,
    LocationComponent,
    ReportsavedComponent,
    StepperComponent,
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    NgbModule,
    FormsModule,
    ReactiveFormsModule,
    KeycloakAngularModule,
    BrowserAnimationsModule,
    HttpClientModule,
    MaterialComponents,
    ToastrModule.forRoot({
      timeOut: 3000,
      positionClass: 'toast-top-center',
      preventDuplicates: true,
      maxOpened: 1,
    }),
    BrowserAnimationsModule,
  ],
  exports: [
    MaterialComponents
  ],
  providers: [
    {
      provide: APP_INITIALIZER,
      useFactory: initializeKeycloak,
      multi: true,
      deps: [KeycloakService],
    },
    DataService,
    LoginService,
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
