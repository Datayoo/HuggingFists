"use strict";(self.webpackChunksengee_ui=self.webpackChunksengee_ui||[]).push([[650],{10650:(w,E,o)=>{o.d(E,{y:()=>K});var a=o(93075),g=o(57781),O=o(47910),M=o(92340),n=o(5e3),x=o(40520),P=o(66180),T=o(49727),p=o(77152),m=o(64546),d=o(41894),c=o(11047),F=o(69808),f=o(78054),b=o(82683),C=o(31453),Z=o(16114),A=o(76042),B=o(92643),h=o(63640);function v(e,i){1&e&&(n.ynx(0),n._uU(1,"\u8bf7\u518d\u6b21\u8f93\u5165\u5bc6\u7801\uff01"),n.BQk())}function y(e,i){1&e&&(n.ynx(0),n._uU(1,"\u5bc6\u7801\u4e0d\u4e00\u81f4\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165\uff01"),n.BQk())}function D(e,i){if(1&e&&(n.YNc(0,v,2,0,"ng-container",45),n.YNc(1,y,2,0,"ng-container",45)),2&e){const t=i.$implicit;n.Q6J("ngIf",t.hasError("required")),n.xp6(1),n.Q6J("ngIf",t.hasError("confirm"))}}function U(e,i){1&e&&(n.ynx(0),n._uU(1,"\u8bf7\u8f93\u5165\u624b\u673a\u53f7\uff01"),n.BQk())}function R(e,i){1&e&&(n.ynx(0),n._uU(1,"\u624b\u673a\u53f7\u683c\u5f0f\u4e0d\u6b63\u786e\uff01"),n.BQk())}function I(e,i){if(1&e&&(n.YNc(0,U,2,0,"ng-container",45),n.YNc(1,R,2,0,"ng-container",45)),2&e){const t=i.$implicit;n.Q6J("ngIf",t.hasError("required")),n.xp6(1),n.Q6J("ngIf",t.hasError("format"))}}function N(e,i){if(1&e){const t=n.EpF();n.TgZ(0,"span",46),n.NdJ("click",function(){return n.CHM(t),n.oxw().isVisible=!0}),n._uU(1),n.qZA()}if(2&e){const t=n.oxw();n.Q6J("disabled","INVALID"===t.validateForm.controls.mobile.status||t.timer),n.xp6(1),n.Oqu(t.smsCodeTxt)}}function L(e,i){1&e&&(n.ynx(0),n._uU(1,"\u90ae\u7bb1\u683c\u5f0f\u4e0d\u6b63\u786e\uff01"),n.BQk())}function V(e,i){1&e&&n.YNc(0,L,2,0,"ng-container",45),2&e&&n.Q6J("ngIf",i.$implicit.hasError("format"))}function S(e,i){if(1&e){const t=n.EpF();n.ynx(0),n.TgZ(1,"dy-verify-puzzle",47),n.NdJ("onSuccess",function(){return n.CHM(t),n.oxw().onSuccess()}),n.qZA(),n.BQk()}}const q=function(){return{width:"350px"}};let K=(()=>{class e{constructor(t,r,l,s,_){this.fb=t,this.http=r,this.api=l,this.message=s,this.router=_,this.smsCodeTxt="\u83b7\u53d6\u9a8c\u8bc1\u7801",this.isVisible=!1,this.logo=M.N.loginLogo,this.confirmationValidator=u=>u.value?u.value!==this.validateForm.controls.password.value?{confirm:!0,error:!0}:{}:{required:!0},this.mobileValidator=u=>u.value?g.Vq.test(u.value)?{}:{format:!0,error:!0}:{required:!0},this.emailValidator=u=>u.value?g.cx.test(u.value)?{}:{format:!0,error:!0}:{}}ngOnInit(){this.year=(0,O.Z)(new Date,"yyyy"),this.validateForm=this.fb.group({userName:[null,[a.kI.required]],password:[null,[a.kI.required]],checkPassword:[null,[a.kI.required,this.confirmationValidator]],mobilePrefix:["+86"],mobile:[null,[a.kI.required,this.mobileValidator]],smsCode:[null,[a.kI.required]],email:[null,[this.emailValidator]],firstName:[null],lastName:[null],company:[null],position:[null],agree:[null,[a.kI.required]]})}onKeydown(t){return"Backspace"===t.code||"Tab"===t.code||/^[0-9]+.?[0-9]*$/.test(String.fromCharCode(t.keyCode))}onSuccess(){setTimeout(()=>{this.isVisible=!1,this.http.get(`/member/client/verification?mobile=${this.validateForm.controls.mobile.value}`).subscribe(t=>{200!==t.code?this.message.error(t.result):this.onCountdown()})},800)}onCountdown(){let t=60;const r=()=>(t--,t<=0?(this.smsCodeTxt="\u518d\u6b21\u53d1\u9001",clearInterval(this.timer),void(this.timer=null)):(this.smsCodeTxt=`\u518d\u6b21\u53d1\u9001(${t})`,r));this.timer=setInterval(r(),1e3)}onValidate(){this.validateForm.valid?this.submitForm():Object.values(this.validateForm.controls).forEach(t=>{t.invalid&&(t.markAsDirty(),t.updateValueAndValidity({onlySelf:!0}))})}submitForm(){const{userName:t,password:r,mobile:l,smsCode:s,email:_,firstName:u,lastName:W,company:J,position:Q}=this.validateForm.value;this.api.register({userName:t,password:(0,g.To)(r),mobile:l,smsCode:s,email:_,firstName:u,lastName:W,company:J,position:Q}).subscribe(z=>{if(200===z.code)return this.message.success("\u6ce8\u518c\u6210\u529f!"),void setTimeout(()=>{this.router.navigate(["/login"])},1500);this.message.error(z.result)})}}return e.\u0275fac=function(t){return new(t||e)(n.Y36(a.qu),n.Y36(x.eN),n.Y36(P.z9),n.Y36(T.dD),n.Y36(p.F0))},e.\u0275cmp=n.Xpm({type:e,selectors:[["app-register"]],decls:76,vars:14,consts:[[1,"login-box"],[1,"top"],[1,"header"],["href","/"],["alt","",3,"src"],[1,"main"],["nz-form","",1,"login-form",3,"formGroup","ngSubmit"],["nzRequired","","nzFor","userName"],["nzErrorTip","\u8bf7\u8f93\u5165\u7528\u6237\u540d\uff01"],["type","text","nz-input","","formControlName","userName","placeholder","\u7528\u6237\u540d"],["nzRequired","","nzFor","password"],["nzErrorTip","\u8bf7\u8f93\u5165\u5bc6\u7801\uff01"],["type","password","nz-input","","formControlName","password","placeholder","\u5bc6\u7801"],["nzRequired","","nzFor","checkPassword"],[3,"nzErrorTip"],["type","password","nz-input","","formControlName","checkPassword","placeholder","\u786e\u8ba4\u5bc6\u7801"],["errorTpl2",""],["nzRequired","","nzFor","mobile"],[3,"nzValidateStatus","nzErrorTip"],["formControlName","mobilePrefix"],["nzLabel","+86","nzValue","+86"],["nz-input","","formControlName","mobile","placeholder","\u624b\u673a\u53f7",3,"keydown"],["errorTpl1",""],["nzRequired","","nzFor","smsCode"],["nzErrorTip","\u8bf7\u8f93\u5165\u77ed\u4fe1\u9a8c\u8bc1\u7801\uff01"],[3,"nzSuffix"],["type","text","nz-input","","formControlName","smsCode","placeholder","\u77ed\u4fe1\u9a8c\u8bc1\u7801"],["suffixTpl",""],["type","text","nz-input","","formControlName","email","placeholder","\u90ae\u7bb1"],["errorTpl3",""],["type","text","nz-input","","formControlName","firstName","placeholder","\u59d3"],["type","text","nz-input","","formControlName","lastName","placeholder","\u540d"],["type","text","nz-input","","formControlName","company","placeholder","\u516c\u53f8"],["type","text","nz-input","","formControlName","position","placeholder","\u804c\u4f4d"],[3,"nzAlign"],["nzErrorTip","\u8bf7\u9605\u8bfb\u5e76\u540c\u610f\u670d\u52a1\u534f\u8bae\uff01"],["nz-checkbox","","formControlName","agree"],["href","javascript:void(0);"],["routerLink","/login",1,"login-form-forgot"],["nz-button","",1,"login-form-button","login-form-margin",3,"nzType"],[1,"footer"],[1,"links"],[1,"copyright"],["nzTitle","\u8bf7\u5b8c\u6210\u5b89\u5168\u9a8c\u8bc1","nzCentered","",3,"nzVisible","nzStyle","nzFooter","nzVisibleChange","nzOnCancel"],[4,"nzModalContent"],[4,"ngIf"],["dy-interactive","",1,"get-captcha",3,"disabled","click"],[3,"onSuccess"]],template:function(t,r){if(1&t&&(n.TgZ(0,"div",0)(1,"div",1)(2,"div",2)(3,"a",3),n._UZ(4,"img",4),n.qZA()()(),n.TgZ(5,"div",5)(6,"form",6),n.NdJ("ngSubmit",function(){return r.onValidate()}),n.TgZ(7,"nz-form-item"),n._UZ(8,"nz-form-label",7),n.TgZ(9,"nz-form-control",8),n._UZ(10,"input",9),n.qZA()(),n.TgZ(11,"nz-form-item"),n._UZ(12,"nz-form-label",10),n.TgZ(13,"nz-form-control",11),n._UZ(14,"input",12),n.qZA()(),n.TgZ(15,"nz-form-item"),n._UZ(16,"nz-form-label",13),n.TgZ(17,"nz-form-control",14),n._UZ(18,"input",15),n.YNc(19,D,2,2,"ng-template",null,16,n.W1O),n.qZA()(),n.TgZ(21,"nz-form-item"),n._UZ(22,"nz-form-label",17),n.TgZ(23,"nz-form-control",18)(24,"nz-select",19),n._UZ(25,"nz-option",20),n.qZA(),n.TgZ(26,"input",21),n.NdJ("keydown",function(s){return r.onKeydown(s)}),n.qZA(),n.YNc(27,I,2,2,"ng-template",null,22,n.W1O),n.qZA()(),n.TgZ(29,"nz-form-item"),n._UZ(30,"nz-form-label",23),n.TgZ(31,"nz-form-control",24)(32,"nz-input-group",25),n._UZ(33,"input",26),n.qZA(),n.YNc(34,N,2,2,"ng-template",null,27,n.W1O),n.qZA()(),n.TgZ(36,"nz-form-item")(37,"nz-form-control",14),n._UZ(38,"input",28),n.YNc(39,V,1,1,"ng-template",null,29,n.W1O),n.qZA()(),n.TgZ(41,"nz-form-item")(42,"nz-form-control"),n._UZ(43,"input",30),n.qZA(),n.TgZ(44,"nz-form-control"),n._UZ(45,"input",31),n.qZA()(),n.TgZ(46,"nz-form-item")(47,"nz-form-control"),n._UZ(48,"input",32),n.qZA()(),n.TgZ(49,"nz-form-item")(50,"nz-form-control"),n._UZ(51,"input",33),n.qZA()(),n.TgZ(52,"nz-form-item",34)(53,"nz-form-control",35)(54,"label",36),n._uU(55,"\u6211\u5df2\u9605\u8bfb\u5e76\u540c\u610f"),n.qZA(),n.TgZ(56,"a",37),n._uU(57,"\u670d\u52a1\u534f\u8bae"),n.qZA()(),n.TgZ(58,"span"),n._uU(59,"\u5df2\u6709\u8d26\u53f7\uff0c"),n.TgZ(60,"a",38),n._uU(61,"\u53bb\u767b\u5f55"),n.qZA()()(),n.TgZ(62,"button",39),n._uU(63,"\u6ce8 \u518c"),n.qZA()()(),n.TgZ(64,"div",40)(65,"div",41)(66,"a",37),n._uU(67,"\u5e2e\u52a9"),n.qZA(),n.TgZ(68,"a",37),n._uU(69,"\u9690\u79c1"),n.qZA(),n.TgZ(70,"a",37),n._uU(71,"\u6761\u6b3e"),n.qZA()(),n.TgZ(72,"div",42),n._uU(73),n.qZA()()(),n.TgZ(74,"nz-modal",43),n.NdJ("nzVisibleChange",function(s){return r.isVisible=s})("nzOnCancel",function(){return r.isVisible=!1}),n.YNc(75,S,2,0,"ng-container",44),n.qZA()),2&t){const l=n.MAs(20),s=n.MAs(28),_=n.MAs(35),u=n.MAs(40);n.xp6(4),n.Q6J("src","../../../assets/logo/"+r.logo,n.LSH),n.xp6(2),n.Q6J("formGroup",r.validateForm),n.xp6(11),n.Q6J("nzErrorTip",l),n.xp6(6),n.Q6J("nzValidateStatus",r.validateForm.controls.mobile)("nzErrorTip",s),n.xp6(9),n.Q6J("nzSuffix",_),n.xp6(5),n.Q6J("nzErrorTip",u),n.xp6(15),n.Q6J("nzAlign","middle"),n.xp6(10),n.Q6J("nzType","primary"),n.xp6(11),n.hij(" Copyright \xa9 ",r.year," "),n.xp6(1),n.Q6J("nzVisible",r.isVisible)("nzStyle",n.DdM(13,q))("nzFooter",null)}},directives:[a._Y,a.JL,m.Lr,a.sg,d.SK,m.Nx,d.t3,m.iK,m.Fd,c.Zp,a.Fj,a.JJ,a.u,F.O5,f.Vq,f.Ip,c.gB,b.w,c.ke,C.mU,Z.Ie,p.yS,A.ix,B.dQ,h.du,h.Hf,C.F1],styles:[".login-box[_ngcontent-%COMP%]{width:100%;min-height:100%;background:#f0f2f5 url(login-bg.ed05d5bdf866ab00.svg) no-repeat 50%;background-size:100%;padding:110px 0 144px;position:relative}.login-box[_ngcontent-%COMP%]   .header[_ngcontent-%COMP%]{height:36px;line-height:36px;text-align:center;margin-bottom:120px}.login-box[_ngcontent-%COMP%]   .header[_ngcontent-%COMP%]   img[_ngcontent-%COMP%]{width:290px;vertical-align:top;border-style:none}.login-box[_ngcontent-%COMP%]   .header[_ngcontent-%COMP%]   .title[_ngcontent-%COMP%]{font-size:33px;color:#000000d9;font-family:Chinese Quote,-apple-system,BlinkMacSystemFont,Segoe UI,PingFang SC,Hiragino Sans GB,Microsoft YaHei,Helvetica Neue,Helvetica,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol;font-weight:600;position:relative;top:2px}.login-box[_ngcontent-%COMP%]   .main[_ngcontent-%COMP%]{min-width:260px;width:380px;margin:0 auto}.login-box[_ngcontent-%COMP%]   .main[_ngcontent-%COMP%]   .login-form[_ngcontent-%COMP%]{width:100%}.login-box[_ngcontent-%COMP%]   .main[_ngcontent-%COMP%]   .login-form-margin[_ngcontent-%COMP%]{margin-bottom:16px;align-items:center;justify-content:space-between}.login-box[_ngcontent-%COMP%]   .main[_ngcontent-%COMP%]   .login-form-forgot[_ngcontent-%COMP%]{float:right}.login-box[_ngcontent-%COMP%]   .main[_ngcontent-%COMP%]   .login-form-button[_ngcontent-%COMP%]{width:100%}.login-box[_ngcontent-%COMP%]   .main[_ngcontent-%COMP%]     .ant-form-item-control-input-content{display:flex}.login-box[_ngcontent-%COMP%]   .main[_ngcontent-%COMP%]   .verify-code-input[_ngcontent-%COMP%]{width:280px}.login-box[_ngcontent-%COMP%]   .main[_ngcontent-%COMP%]   .verify-code[_ngcontent-%COMP%]{width:100px;height:32px;margin-bottom:0}.login-box[_ngcontent-%COMP%]   .footer[_ngcontent-%COMP%]{position:absolute;width:100%;bottom:0;padding:0 16px;margin:48px 0 24px;text-align:center}.login-box[_ngcontent-%COMP%]   .footer[_ngcontent-%COMP%]   .links[_ngcontent-%COMP%]{margin-bottom:8px;font-size:14px}.login-box[_ngcontent-%COMP%]   .footer[_ngcontent-%COMP%]   .links[_ngcontent-%COMP%]   a[_ngcontent-%COMP%]:not(:last-child){margin-right:20px}.login-box[_ngcontent-%COMP%]   .footer[_ngcontent-%COMP%]   .copyright[_ngcontent-%COMP%]{color:#00000073;font-size:14px}",".ant-form-item[_ngcontent-%COMP%]   .ant-select[_ngcontent-%COMP%]{width:70px}.login-box[_ngcontent-%COMP%]{padding:100px 0}.login-box[_ngcontent-%COMP%]   .header[_ngcontent-%COMP%]{margin-bottom:60px}  .ant-checkbox+span{padding-right:1px}  .ant-select:not(.ant-select-customize-input) .ant-select-selector{border-top-right-radius:0;border-bottom-right-radius:0}  .ant-form-item-has-error .ant-select:not(.ant-select-disabled):not(.ant-select-customize-input) .ant-select-selector{border-right-color:#0000!important}  .ant-form-item{margin-bottom:15px}  .ant-form-item{position:relative}  .ant-form-item-label{position:absolute;left:-10px}  .ant-form-item-label label:after{display:none}.get-captcha[_ngcontent-%COMP%]{cursor:pointer}"]}),e})()}}]);