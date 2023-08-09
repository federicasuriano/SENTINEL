import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { map } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class DataService {

  //private url = "http://52.57.199.18:8082/sentinel/api/";
  //private url = "http://34.206.143.206:8082/sentinel/api/";
  private url = "http://localhost:8082/sentinel/api/";

  httpOptions = {
    headers: new HttpHeaders({ 'Content-Type': 'application/json' })
  };

  constructor(private httpClient: HttpClient) { }

  public checkAddress(address: any): any {
    return this.httpClient.post(this.url + "checkAddress", address, this.httpOptions).pipe(map(response => {
      return response;
    },
      (error: any) => {
        console.error(error);
      }
    ))
  }

  public saveReports(listReports: any): any {
    return this.httpClient.post(this.url + "saveReports", listReports, this.httpOptions).pipe(map(response => {
      return response;
    },
      (error: any) => {
        console.error(error);
      }
    ))
  }

}
