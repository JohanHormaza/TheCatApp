
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
    _job = (b4i_httpjob*)([self->__taskidtojob Get:(NSObject*)(@(_taskid))]);
    if (_job== nil) {
        [self->___c LogImpl:@"02359300" :[@[@"HttpUtils2Service: job completado varias veces - ",[self.bi NumberToString:@(_taskid)]] componentsJoinedByString:@""] :0];
        if (true) return @"";
    };
    [self->__taskidtojob Remove:(NSObject*)(@(_taskid))];
    _job->__success = _success;
    _job->__errormessage = _errormessage;
    [_job _complete /*NSString**/ :_res];
    return @"";
}
- (NSString*)  _hc_responseerror:(B4IHttpResponse*) _response :(NSString*) _reason :(int) _statuscode :(int) _taskid{
    NSString* _j = @"";
    [self->___c LogImpl:@"02228226" :[@[@"ErrorRespuesta: ",_reason,@", código de estado: ",[self.bi NumberToString:@(_statuscode)]] componentsJoinedByString:@""] :0];
    @try {
        _j = [_response GetString];
        if ([_j isEqual:@""] == false) {
            _reason = _j;};
    }
    @catch (NSException* e6) {
        [B4I SetException:e6];
        _reason = @"(Respuesta de decodificación de error)";
    };
    [self _completejob:_taskid :false :_reason :_response];
    return @"";
}
- (NSString*)  _hc_responsesuccess:(B4IHttpResponse*) _response :(int) _taskid{
    [self _completejob:_taskid :true :@"" :_response];
    return @"";
}
- (NSString*)  _process_globals{
    self->__main=[b4i_main new];
    self->__listcatspage=[b4i_listcatspage new];
    self->__hc = [B4IHttp new];
    self->__taskidtojob = [B4IMap new];
    self->__tempfolder = @"";
    self->__taskcounter = 0;
    return @"";
}
- (NSString*)  _service_create{
    if ([self->__hc IsInitialized]==false) {
        [self->__hc Initialize:self.bi :@"hc"];
    };
    [self->__taskidtojob Initialize];
    return @"";
}
- (NSString*)  _submitjob:(b4i_httpjob*) _job{
    int _taskid = 0;
    
    if ([self->__taskidtojob IsInitialized]==false) {
        [self _service_create];};
    self->__taskcounter = (int) (self->__taskcounter+1);
    _taskid = self->__taskcounter;
    [self->__taskidtojob Put:(NSObject*)(@(_taskid)) :(NSObject*)(_job)];
    if ([_job->__username isEqual:@""] == false && [_job->__password isEqual:@""] == false) {
        [self->__hc ExecuteCredentials:[_job _getrequest] :_taskid :_job->__username:_job->__password];
    }else {
        [self->__hc Execute:[_job _getrequest] :_taskid];
    };
    return @"";
}
@end
