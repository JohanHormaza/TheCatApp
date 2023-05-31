
#import "b4i_httputils2service.h"
#import "b4i_main.h"
#import "b4i_httpjob.h"
#import "b4i_listcatspage.h"


@implementation b4i_httputils2service 


+ (instancetype)new {
    static b4i_httputils2service* shared = nil;
    if (shared == nil) {
        shared = [self alloc];
        shared.bi = [[B4I alloc] init:shared];
        shared.__c = [B4ICommon new];
    }
    return shared;
}

- (NSString*)  _completejob:(int) _taskid :(BOOL) _success :(NSString*) _errormessage :(B4IHttpResponse*) _res{
b4i_httpjob* _job = nil;
 //BA.debugLineNum = 152;BA.debugLine="Sub CompleteJob(TaskId As Int, success As Boolean,";
 //BA.debugLineNum = 154;BA.debugLine="Dim job As HttpJob = TaskIdToJob.Get(TaskId)";
_job = (b4i_httpjob*)([self->__taskidtojob Get:(NSObject*)(@(_taskid))]);
 //BA.debugLineNum = 155;BA.debugLine="If job = Null Then";
if (_job== nil) { 
 //BA.debugLineNum = 156;BA.debugLine="Log(\"HttpUtils2Service: job completado varias ve";
[self->___c LogImpl:@"02359300" :[@[@"HttpUtils2Service: job completado varias veces - ",[self.bi NumberToString:@(_taskid)]] componentsJoinedByString:@""] :0];
 //BA.debugLineNum = 157;BA.debugLine="Return";
if (true) return @"";
 };
 //BA.debugLineNum = 159;BA.debugLine="TaskIdToJob.Remove(TaskId)";
[self->__taskidtojob Remove:(NSObject*)(@(_taskid))];
 //BA.debugLineNum = 160;BA.debugLine="job.success = success";
_job->__success /*BOOL*/  = _success;
 //BA.debugLineNum = 161;BA.debugLine="job.errorMessage = errorMessage";
_job->__errormessage /*NSString**/  = _errormessage;
 //BA.debugLineNum = 165;BA.debugLine="job.Complete(res)";
[_job _complete /*NSString**/ :_res];
 //BA.debugLineNum = 167;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _hc_responseerror:(B4IHttpResponse*) _response :(NSString*) _reason :(int) _statuscode :(int) _taskid{
NSString* _j = @"";
 //BA.debugLineNum = 131;BA.debugLine="Sub hc_ResponseError (Response As HttpResponse, Re";
 //BA.debugLineNum = 133;BA.debugLine="Log(\"ErrorRespuesta: \" & Reason & \", código de es";
[self->___c LogImpl:@"02228226" :[@[@"ErrorRespuesta: ",_reason,@", código de estado: ",[self.bi NumberToString:@(_statuscode)]] componentsJoinedByString:@""] :0];
 //BA.debugLineNum = 135;BA.debugLine="Try";
@try { //BA.debugLineNum = 136;BA.debugLine="Dim j As String = Response.GetString";
_j = [_response GetString];
 //BA.debugLineNum = 137;BA.debugLine="If j <> \"\" Then Reason = j";
if ([_j isEqual:@""] == false) { 
_reason = _j;};
 } 
       @catch (NSException* e6) {
			[B4I SetException:e6]; //BA.debugLineNum = 139;BA.debugLine="Reason = \"(Respuesta de decodificación de error)";
_reason = @"(Respuesta de decodificación de error)";
 };
 //BA.debugLineNum = 141;BA.debugLine="CompleteJob(TaskId, False, Reason, Response)";
[self _completejob:_taskid :false :_reason :_response];
 //BA.debugLineNum = 142;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _hc_responsesuccess:(B4IHttpResponse*) _response :(int) _taskid{
 //BA.debugLineNum = 144;BA.debugLine="Sub hc_ResponseSuccess (Response As HttpResponse,";
 //BA.debugLineNum = 145;BA.debugLine="CompleteJob(TaskId, True, \"\", Response)";
[self _completejob:_taskid :true :@"" :_response];
 //BA.debugLineNum = 146;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _process_globals{
self->__main=[b4i_main new];
self->__listcatspage=[b4i_listcatspage new];
 //BA.debugLineNum = 2;BA.debugLine="Sub Process_Globals";
 //BA.debugLineNum = 14;BA.debugLine="Private hc As HttpClient";
self->__hc = [B4IHttp new];
 //BA.debugLineNum = 16;BA.debugLine="Private TaskIdToJob As Map";
self->__taskidtojob = [B4IMap new];
 //BA.debugLineNum = 19;BA.debugLine="Public TempFolder As String";
self->__tempfolder = @"";
 //BA.debugLineNum = 23;BA.debugLine="Private taskCounter As Int";
self->__taskcounter = 0;
 //BA.debugLineNum = 25;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _service_create{
 //BA.debugLineNum = 27;BA.debugLine="Sub Service_Create";
 //BA.debugLineNum = 41;BA.debugLine="If hc.IsInitialized = False Then";
if ([self->__hc IsInitialized]==false) { 
 //BA.debugLineNum = 46;BA.debugLine="hc.Initialize(\"hc\")";
[self->__hc Initialize:self.bi :@"hc"];
 };
 //BA.debugLineNum = 54;BA.debugLine="TaskIdToJob.Initialize";
[self->__taskidtojob Initialize];
 //BA.debugLineNum = 56;BA.debugLine="End Sub";
return @"";
}
- (NSString*)  _submitjob:(b4i_httpjob*) _job{
int _taskid = 0;
 //BA.debugLineNum = 73;BA.debugLine="Public Sub SubmitJob(job As HttpJob)";
 //BA.debugLineNum = 74;BA.debugLine="If TaskIdToJob.IsInitialized = False Then Service";
if ([self->__taskidtojob IsInitialized]==false) { 
[self _service_create];};
 //BA.debugLineNum = 78;BA.debugLine="taskCounter = taskCounter + 1";
self->__taskcounter = (int) (self->__taskcounter+1);
 //BA.debugLineNum = 79;BA.debugLine="Dim TaskId As Int = taskCounter";
_taskid = self->__taskcounter;
 //BA.debugLineNum = 81;BA.debugLine="TaskIdToJob.Put(TaskId, job)";
[self->__taskidtojob Put:(NSObject*)(@(_taskid)) :(NSObject*)(_job)];
 //BA.debugLineNum = 82;BA.debugLine="If job.Username <> \"\" And job.Password <> \"\" Then";
if ([_job->__username /*NSString**/  isEqual:@""] == false && [_job->__password /*NSString**/  isEqual:@""] == false) { 
 //BA.debugLineNum = 83;BA.debugLine="hc.ExecuteCredentials(job.GetRequest, TaskId, jo";
[self->__hc ExecuteCredentials:[_job _getrequest /*B4IHttpRequest**/ ] :_taskid :_job->__username /*NSString**/  :_job->__password /*NSString**/ ];
 }else {
 //BA.debugLineNum = 85;BA.debugLine="hc.Execute(job.GetRequest, TaskId)";
[self->__hc Execute:[_job _getrequest /*B4IHttpRequest**/ ] :_taskid];
 };
 //BA.debugLineNum = 87;BA.debugLine="End Sub";
return @"";
}
@end
