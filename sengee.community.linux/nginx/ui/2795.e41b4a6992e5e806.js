"use strict";(self.webpackChunksengee_ui=self.webpackChunksengee_ui||[]).push([[2795],{72795:(T,u,g)=>{g.d(u,{I:()=>m,x:()=>L});var t=g(5e3),s=g(18505),C=g(46055),M=g(64203),b=g(77152),h=g(90056),x=g(90459),w=g(49727),d=g(62545),P=g(69808),O=g(91156),v=g(98488),f=g(57781),y=g(89445);function k(i,p){if(1&i){const e=t.EpF();t.TgZ(0,"dy-search",12),t.NdJ("search",function(c){return t.CHM(e),t.oxw().searchHandler(c)}),t.qZA()}}const E=function(i){return{width:i}},D=function(i){return{height:i}},m=[{icon:"suanziku",size:22,alias:"menu.operatorLib",key:"operatorLib"},{icon:"ziguocheng",size:22,alias:"menu.subProcess",key:"subProcess"},{icon:"renwuguanli",size:26,alias:"menu.job",position:"bottom",url:"/process/job/list"}];let L=(()=>{class i{constructor(e,n,c,o,r,_,a,l){this.router=e,this.api=n,this.processTypeApi=c,this.groupApi=o,this.operatorApi=r,this.fService=_,this.message=a,this.loadingSer=l,this.widthChange=new t.vpe,this.showJobList=new t.vpe,this.menus=m,this.menuClass="",this.tempWidth=0,this.subscriptionArr=[]}ngOnInit(){this.selectedMenu=this.menus.find(e=>e.alias===`menu.${this.selectedMenuKey}`)||this.menus[0],this.subscriptionArr.push(this.fService.notify.get(M.g.EntryStackMode).subscribe(e=>{this.menuClass="stack-mode",this.operatorApi.getListByTag(this.flowData.computionFramework,"container",e.name).subscribe(n=>{this.fnodeData=n})}),this.fService.notify.get(M.g.ExitStackMode).subscribe(()=>{!this.menuClass||(this.menuClass="",this.processTypeApi.getOperatorGroupList(this.flowData.graphType).subscribe(e=>{this.fnodeData=e}))}))}ngOnChanges(e){e.flowData&&e.flowData.currentValue&&(this.processTypeApi.getOperatorGroupList(this.flowData.graphType).subscribe(n=>{this.fnodeData=n}),this.groupApi.getRootGroup().subscribe(n=>{this.subFlowData=n}))}ngOnDestroy(){this.subscriptionArr.map(e=>{e.unsubscribe()})}searchHandler(e){"menu.operatorLib"===this.selectedMenu.alias&&(e?this.operatorApi.searchOperator(this.flowData.computionFramework,e).subscribe(n=>{this.fnodeData=n}):this.processTypeApi.getOperatorGroupList(this.flowData.graphType).subscribe(n=>{this.fnodeData=n}))}openFolder(e){const{node:n,eventName:c}=e,{id:o,resourceType:r}=n.origin;r===C.b0.OpProfile||r===C.b0.PrcGraph||(n.origin.loadedChildren=!0,this.groupApi.getGroupList(o,r).subscribe(_=>{n.clearChildren(),_&&_.length&&n.addChildren(_),r===C.b0.PrcGrp?this.api.getChildGraphList(o,this.flowData.computionFramework,this.flowData.graphType).pipe((0,s.b)(a=>{a.map(l=>{l.title=l.i18nText||l.alias||l.name,l.key=l.id,l.isLeaf=!0})})).subscribe(a=>{a&&a.length&&n.addChildren(a),"click"===c&&!n.isExpanded&&(n.isExpanded=!0)}):this.operatorApi.getOperatorList(o,this.flowData.computionFramework).pipe((0,s.b)(a=>{a.map(l=>{l.title=l.i18nText||l.alias||l.name,l.key=l.id,l.isLeaf=!0})})).subscribe(a=>{a&&a.length&&n.addChildren(a),"click"===c&&!n.isExpanded&&(n.isExpanded=!0)})}))}toggleMenu(e){if("menu.reference"!==e.alias){if("menu.job"===e.alias)return void this.router.navigate([e.url],{queryParams:{processId:this.flowData.id}});if(this.selectedMenu===e)return void this.arrowClick();this.selectedMenu=e,this.tempSelectedMenu=e,this.showJobList.emit(!1),36===this.width&&(this.width=this.tempWidth<50?236:this.tempWidth,this.widthChange.emit(this.width))}}mousedownHandler(e){this.fService.readonly||this.fService.notify.notify(M.g.OperatorCreate,{node:e.node.origin,event:e.event})}arrowClick(){this.width>36?(this.tempWidth=this.width,this.width=36):this.width=this.tempWidth<50?236:this.tempWidth,this.widthChange.emit(this.width)}dragStartHandler(){this.tempWidth=this.width}draggingHandler(e){this.width=this.tempWidth+e.moveX,this.width>400&&(this.width=400),this.width<50&&(this.width=36),this.widthChange.emit(this.width)}}return i.\u0275fac=function(e){return new(e||i)(t.Y36(b.F0),t.Y36(h.DQ),t.Y36(h.s4),t.Y36(h.SE),t.Y36(h.gl),t.Y36(x.W),t.Y36(w.dD),t.Y36(d.bz))},i.\u0275cmp=t.Xpm({type:i,selectors:[["app-left-panel"]],inputs:{flowData:"flowData",width:"width",height:"height",selectedMenuKey:"selectedMenuKey"},outputs:{widthChange:"widthChange",showJobList:"showJobList"},features:[t.TTD],decls:17,vars:34,consts:[[1,"left-panel","pa",3,"ngStyle"],["dy-drag","","position","right",3,"dragStart","dragging"],[1,"menu-trigger","pr",3,"click"],["dy-icon","",1,"pa",3,"type"],[1,"menus-box","fl",3,"ngClass"],[3,"menus","openable","selectedMenu","onClick"],[1,"tree-box","fr",3,"ngStyle"],[1,"title"],[1,"content"],["mode","manual",3,"search",4,"ngIf"],[3,"data","selectedStatus","mousedown","hidden","onExpand","onMousedown"],[3,"data","operatorIcon","selectedStatus","mousedown","hidden","onExpand","onMousedown"],["mode","manual",3,"search"]],template:function(e,n){1&e&&(t.TgZ(0,"div",0),t.ALo(1,"px"),t.TgZ(2,"div",1),t.NdJ("dragStart",function(){return n.dragStartHandler()})("dragging",function(o){return n.draggingHandler(o)}),t.qZA(),t.TgZ(3,"span",2),t.NdJ("click",function(){return n.arrowClick()}),t._UZ(4,"i",3),t.qZA(),t.TgZ(5,"div",4)(6,"dy-menu",5),t.NdJ("onClick",function(o){return n.toggleMenu(o)}),t.qZA()(),t.TgZ(7,"div",6),t.ALo(8,"calc"),t.TgZ(9,"div",7),t._uU(10),t.ALo(11,"nzI18n"),t.qZA(),t.TgZ(12,"div",8),t.YNc(13,k,1,0,"dy-search",9),t.TgZ(14,"app-tree",10),t.NdJ("onExpand",function(o){return n.openFolder(o)})("onMousedown",function(o){return n.mousedownHandler(o)}),t.qZA(),t.TgZ(15,"app-tree",11),t.NdJ("onExpand",function(o){return n.openFolder(o)})("onMousedown",function(o){return n.mousedownHandler(o)}),t.qZA(),t.TgZ(16,"app-tree",10),t.NdJ("onExpand",function(o){return n.openFolder(o)})("onMousedown",function(o){return n.mousedownHandler(o)}),t.qZA()()()()),2&e&&(t.Q6J("ngStyle",t.VKq(30,E,t.lcZ(1,24,n.width))),t.xp6(4),t.Q6J("type",n.width>36?"zuoshuangjiantou":"a-youshuangjiantou1"),t.xp6(1),t.Q6J("ngClass",n.menuClass),t.xp6(1),t.Q6J("menus",n.menus)("openable",!1)("selectedMenu",n.selectedMenu),t.xp6(1),t.Q6J("ngStyle",t.VKq(32,D,t.lcZ(8,26,n.height+11))),t.xp6(3),t.Oqu(t.lcZ(11,28,n.selectedMenu.alias)),t.xp6(2),t.ekj("searchable","menu.operatorLib"===n.selectedMenu.alias&&!n.menuClass),t.xp6(1),t.Q6J("ngIf","menu.operatorLib"===n.selectedMenu.alias&&!n.menuClass),t.xp6(1),t.Q6J("data",n.datasourceData)("selectedStatus",!1)("mousedown",!0)("hidden","menu.datasource"!==n.selectedMenu.alias),t.xp6(1),t.Q6J("data",n.fnodeData)("operatorIcon",!0)("selectedStatus",!1)("mousedown",!0)("hidden","menu.operatorLib"!==n.selectedMenu.alias),t.xp6(1),t.Q6J("data",n.subFlowData)("selectedStatus",!1)("mousedown",!0)("hidden","menu.subProcess"!==n.selectedMenu.alias))},directives:[P.PC,O.gZ,O.kE,P.mk,d.CU,P.O5,O.J3,v.q],pipes:[f.b5,f.fg,y.o9],styles:["html.default[_ngcontent-%COMP%]   html[_ngcontent-%COMP%], html.default[_ngcontent-%COMP%]   body[_ngcontent-%COMP%]{min-width:1366px}html.default[_ngcontent-%COMP%]   ol[_ngcontent-%COMP%], html.default[_ngcontent-%COMP%]   ul[_ngcontent-%COMP%], html.default[_ngcontent-%COMP%]   dl[_ngcontent-%COMP%]{margin:0;padding:0;list-style:none}html.default[_ngcontent-%COMP%]   pre[_ngcontent-%COMP%]{margin:0}html.default[_ngcontent-%COMP%]   .layout[_ngcontent-%COMP%]{display:flex;width:100%;height:100%;flex:auto;flex-direction:column}html.default[_ngcontent-%COMP%]   .fdc[_ngcontent-%COMP%]{flex-direction:column}html.default[_ngcontent-%COMP%]   .fdr[_ngcontent-%COMP%]{flex-direction:row}html.default[_ngcontent-%COMP%]   .fauto[_ngcontent-%COMP%]{flex:auto}html.default[_ngcontent-%COMP%]   .pf[_ngcontent-%COMP%]{position:fixed}html.default[_ngcontent-%COMP%]   .pr[_ngcontent-%COMP%]{position:relative}html.default[_ngcontent-%COMP%]   .pa[_ngcontent-%COMP%]{position:absolute}html.default[_ngcontent-%COMP%]   .fl[_ngcontent-%COMP%]{float:left}html.default[_ngcontent-%COMP%]   .fr[_ngcontent-%COMP%]{float:right}html.default[_ngcontent-%COMP%]   .clear-f[_ngcontent-%COMP%]{clear:both}html.default[_ngcontent-%COMP%]   h1[_ngcontent-%COMP%], html.default[_ngcontent-%COMP%]   h2[_ngcontent-%COMP%], html.default[_ngcontent-%COMP%]   h3[_ngcontent-%COMP%], html.default[_ngcontent-%COMP%]   h4[_ngcontent-%COMP%], html.default[_ngcontent-%COMP%]   h5[_ngcontent-%COMP%], html.default[_ngcontent-%COMP%]   h6[_ngcontent-%COMP%]{color:#396669}html.default[_ngcontent-%COMP%]   .ant-table-pagination.ant-pagination[_ngcontent-%COMP%]{margin:0}html.default[_ngcontent-%COMP%]   .ant-pagination[_ngcontent-%COMP%]{text-align:right}html.default[_ngcontent-%COMP%]   .ant-table-column-sorter[_ngcontent-%COMP%], html.default[_ngcontent-%COMP%]   .ant-table-filter-trigger[_ngcontent-%COMP%]{color:#a1a1a1}html.default[_ngcontent-%COMP%]   .ant-table-filter-trigger.active[_ngcontent-%COMP%]{color:#2a8b92}html.default[_ngcontent-%COMP%]   .ant-table-thead[_ngcontent-%COMP%]   th.ant-table-column-sort[_ngcontent-%COMP%], html.default[_ngcontent-%COMP%]   .ant-table-thead[_ngcontent-%COMP%]   th.ant-table-column-has-sorters[_ngcontent-%COMP%]:hover{background:#e2eeee}html.default[_ngcontent-%COMP%]   .ant-tree-switcher[_ngcontent-%COMP%], html.default[_ngcontent-%COMP%]   .ant-tree-indent-unit[_ngcontent-%COMP%]{width:17px;color:#2a8b92}html.default[_ngcontent-%COMP%]   .ant-tree[_ngcontent-%COMP%]   .ant-tree-node-content-wrapper[_ngcontent-%COMP%]{padding:0}html.default[_ngcontent-%COMP%]   .ant-tree-checkbox-inner[_ngcontent-%COMP%]{display:inline-block}html.default[_ngcontent-%COMP%]   .ant-select-tree[_ngcontent-%COMP%]   .ant-select-tree-node-content-wrapper.ant-select-tree-node-selected[_ngcontent-%COMP%]:hover{background-color:#e2eeee}html.default[_ngcontent-%COMP%]   .ant-modal-title[_ngcontent-%COMP%]{color:#396669}html.default[_ngcontent-%COMP%]   .ant-dropdown-menu-item-selected[_ngcontent-%COMP%], html.default[_ngcontent-%COMP%]   .ant-dropdown-menu-submenu-title-selected[_ngcontent-%COMP%]{background-color:#e2eeee}html.default[_ngcontent-%COMP%]   .ant-badge-status-processing[_ngcontent-%COMP%]{background-color:#2a8b92}html.default[_ngcontent-%COMP%]   .ant-badge-status-processing[_ngcontent-%COMP%]:after{border-color:#2a8b92}html.default[_ngcontent-%COMP%]   .ant-tooltip[_ngcontent-%COMP%]{max-width:550px;max-height:550px;overflow:hidden}html.default[_ngcontent-%COMP%]   .ant-tooltip-content[_ngcontent-%COMP%]{width:100%;height:100%;max-width:550px;max-height:542px}html.default[_ngcontent-%COMP%]   .ant-tooltip-inner[_ngcontent-%COMP%]{box-shadow:none}html.default[_ngcontent-%COMP%]   .ant-tooltip.replicable[_ngcontent-%COMP%]   .ant-tooltip-inner[_ngcontent-%COMP%]{display:flex;overflow:hidden;padding-right:3px}html.default[_ngcontent-%COMP%]   .ant-tooltip.replicable[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]{overflow:auto}html.default[_ngcontent-%COMP%]   .ant-tooltip.replicable[_ngcontent-%COMP%]   .copy-box[_ngcontent-%COMP%]{height:20px;position:relative;top:-7px}html.default[_ngcontent-%COMP%]   .ant-tooltip.replicable[_ngcontent-%COMP%]   .copy-box[_ngcontent-%COMP%]   .ic-fuzhi[_ngcontent-%COMP%], html.default[_ngcontent-%COMP%]   .ant-tooltip.replicable[_ngcontent-%COMP%]   .copy-box[_ngcontent-%COMP%]   .ic-check[_ngcontent-%COMP%]{font-size:20px}html.default[_ngcontent-%COMP%]   .ant-tooltip.replicable[_ngcontent-%COMP%]   .copy-box[_ngcontent-%COMP%]   .ic-fuzhi[_ngcontent-%COMP%]:hover, html.default[_ngcontent-%COMP%]   .ant-tooltip.replicable[_ngcontent-%COMP%]   .copy-box[_ngcontent-%COMP%]   .ic-check[_ngcontent-%COMP%]:hover{color:#c4c4c4}html.default   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]{width:100%;height:100%;background-color:#f7fdfd;border-right:solid 1px #dbe9ea}html.default   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .menu-trigger[_ngcontent-%COMP%]{display:block;width:100%;height:11px;background-color:#c8dde0}html.default   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .menu-trigger[_ngcontent-%COMP%]   i[_ngcontent-%COMP%]{top:-4px;right:2px}html.default   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .menus-box[_ngcontent-%COMP%]{width:36px;height:calc(100% - 11px)}html.default   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .menus-box.stack-mode[_ngcontent-%COMP%]     li:nth-child(2){opacity:.5;pointer-events:none}html.default   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .menus-box[_ngcontent-%COMP%]     i.ic-suanziku, html.default   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .menus-box[_ngcontent-%COMP%]     i.ic-ziguocheng{margin-left:2px}html.default   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]{width:calc(100% - 36px);overflow:hidden}html.default   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .title[_ngcontent-%COMP%]{width:100%;height:23px;line-height:23px;padding:0 13px;background-color:#c8dde0;white-space:nowrap;border-top:1px solid #dbe9ea;color:#396669;display:flex;justify-content:space-between}html.default   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]{height:calc(100% - 23px)}html.default   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]     .dy-search{margin:8px 8px 0;width:calc(100% - 16px)}html.default   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]     .tree-box{height:100%}html.default   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content.searchable[_ngcontent-%COMP%]     .tree-box{height:calc(100% - 33px)}html.default   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]{padding:10px;background-color:#fff;border:solid 1px #dbe9ea;border-radius:3px;display:flex;align-items:center;margin-top:3px;margin-bottom:15px}html.default   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]   .corner[_ngcontent-%COMP%]{right:1px;bottom:1px;width:0;height:0;border-bottom:6px solid #2a8b92;border-left:6px solid transparent;cursor:pointer;transition:all .15s}html.default   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]   .corner[_ngcontent-%COMP%]   .del-box[_ngcontent-%COMP%]{left:-17px;top:-15px;padding:0 2px;color:#2a8b92;font-size:18px;opacity:0;transition:opacity .15s}html.default   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]   .corner[_ngcontent-%COMP%]:hover{border-bottom-color:#0000}html.default   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]   .corner[_ngcontent-%COMP%]:hover   .del-box[_ngcontent-%COMP%]{opacity:1}html.default   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item.selected[_ngcontent-%COMP%]{background-color:#d9fbfd;border-color:#2a8b92}html.default   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]   .icon-box[_ngcontent-%COMP%]{width:70px;height:70px;border:solid 1px #dbe9ea;border-radius:3px;margin-right:15px}html.default   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]   .info-box[_ngcontent-%COMP%]{flex:1}html.default   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]   .info-box[_ngcontent-%COMP%]   p[_ngcontent-%COMP%]{display:flex;justify-content:space-between;margin-bottom:5px}html.default   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]   .info-box[_ngcontent-%COMP%]   p[_ngcontent-%COMP%]:last-child{margin-bottom:0}html.dark   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]{width:100%;height:100%;background-color:#f4f7fc;border-right:solid 1px #dbe9ea}html.dark   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .menu-trigger[_ngcontent-%COMP%]{display:block;width:100%;height:11px;background-color:#d8e2f0}html.dark   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .menu-trigger[_ngcontent-%COMP%]   i[_ngcontent-%COMP%]{top:-4px;right:2px}html.dark   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .menus-box[_ngcontent-%COMP%]{width:36px;height:calc(100% - 11px)}html.dark   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .menus-box.stack-mode[_ngcontent-%COMP%]     li:nth-child(2){opacity:.5;pointer-events:none}html.dark   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .menus-box[_ngcontent-%COMP%]     i.ic-suanziku, html.dark   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .menus-box[_ngcontent-%COMP%]     i.ic-ziguocheng{margin-left:2px}html.dark   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]{width:calc(100% - 36px);overflow:hidden}html.dark   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .title[_ngcontent-%COMP%]{width:100%;height:23px;line-height:23px;padding:0 13px;background-color:#d8e2f0;white-space:nowrap;border-top:1px solid #dbe9ea;color:#394f69;display:flex;justify-content:space-between}html.dark   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]{height:calc(100% - 23px)}html.dark   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]     .dy-search{margin:8px 8px 0;width:calc(100% - 16px)}html.dark   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]     .tree-box{height:100%}html.dark   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content.searchable[_ngcontent-%COMP%]     .tree-box{height:calc(100% - 33px)}html.dark   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]{padding:10px;background-color:#fff;border:solid 1px #dbe9ea;border-radius:3px;display:flex;align-items:center;margin-top:3px;margin-bottom:15px}html.dark   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]   .corner[_ngcontent-%COMP%]{right:1px;bottom:1px;width:0;height:0;border-bottom:6px solid #275184;border-left:6px solid transparent;cursor:pointer;transition:all .15s}html.dark   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]   .corner[_ngcontent-%COMP%]   .del-box[_ngcontent-%COMP%]{left:-17px;top:-15px;padding:0 2px;color:#275184;font-size:18px;opacity:0;transition:opacity .15s}html.dark   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]   .corner[_ngcontent-%COMP%]:hover{border-bottom-color:#0000}html.dark   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]   .corner[_ngcontent-%COMP%]:hover   .del-box[_ngcontent-%COMP%]{opacity:1}html.dark   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item.selected[_ngcontent-%COMP%]{background-color:#d9e1fd;border-color:#275184}html.dark   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]   .icon-box[_ngcontent-%COMP%]{width:70px;height:70px;border:solid 1px #dbe9ea;border-radius:3px;margin-right:15px}html.dark   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]   .info-box[_ngcontent-%COMP%]{flex:1}html.dark   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]   .info-box[_ngcontent-%COMP%]   p[_ngcontent-%COMP%]{display:flex;justify-content:space-between;margin-bottom:5px}html.dark   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]   .info-box[_ngcontent-%COMP%]   p[_ngcontent-%COMP%]:last-child{margin-bottom:0}html.light-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]{width:100%;height:100%;background-color:#f9faff;border-right:solid 1px #eeefff}html.light-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .menu-trigger[_ngcontent-%COMP%]{display:block;width:100%;height:11px;background-color:#eeedff}html.light-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .menu-trigger[_ngcontent-%COMP%]   i[_ngcontent-%COMP%]{top:-4px;right:2px}html.light-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .menus-box[_ngcontent-%COMP%]{width:36px;height:calc(100% - 11px)}html.light-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .menus-box.stack-mode[_ngcontent-%COMP%]     li:nth-child(2){opacity:.5;pointer-events:none}html.light-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .menus-box[_ngcontent-%COMP%]     i.ic-suanziku, html.light-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .menus-box[_ngcontent-%COMP%]     i.ic-ziguocheng{margin-left:2px}html.light-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]{width:calc(100% - 36px);overflow:hidden}html.light-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .title[_ngcontent-%COMP%]{width:100%;height:23px;line-height:23px;padding:0 13px;background-color:#eeedff;white-space:nowrap;border-top:1px solid #eeefff;color:#001f9b;display:flex;justify-content:space-between}html.light-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]{height:calc(100% - 23px)}html.light-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]     .dy-search{margin:8px 8px 0;width:calc(100% - 16px)}html.light-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]     .tree-box{height:100%}html.light-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content.searchable[_ngcontent-%COMP%]     .tree-box{height:calc(100% - 33px)}html.light-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]{padding:10px;background-color:#fff;border:solid 1px #eeefff;border-radius:3px;display:flex;align-items:center;margin-top:3px;margin-bottom:15px}html.light-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]   .corner[_ngcontent-%COMP%]{right:1px;bottom:1px;width:0;height:0;border-bottom:6px solid #6e8bff;border-left:6px solid transparent;cursor:pointer;transition:all .15s}html.light-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]   .corner[_ngcontent-%COMP%]   .del-box[_ngcontent-%COMP%]{left:-17px;top:-15px;padding:0 2px;color:#6e8bff;font-size:18px;opacity:0;transition:opacity .15s}html.light-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]   .corner[_ngcontent-%COMP%]:hover{border-bottom-color:#0000}html.light-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]   .corner[_ngcontent-%COMP%]:hover   .del-box[_ngcontent-%COMP%]{opacity:1}html.light-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item.selected[_ngcontent-%COMP%]{background-color:#d9e1fd;border-color:#6e8bff}html.light-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]   .icon-box[_ngcontent-%COMP%]{width:70px;height:70px;border:solid 1px #eeefff;border-radius:3px;margin-right:15px}html.light-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]   .info-box[_ngcontent-%COMP%]{flex:1}html.light-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]   .info-box[_ngcontent-%COMP%]   p[_ngcontent-%COMP%]{display:flex;justify-content:space-between;margin-bottom:5px}html.light-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]   .info-box[_ngcontent-%COMP%]   p[_ngcontent-%COMP%]:last-child{margin-bottom:0}html.dark-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]{width:100%;height:100%;background-color:#0e273e;border-right:solid 1px #174064}html.dark-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .menu-trigger[_ngcontent-%COMP%]{display:block;width:100%;height:11px;background-color:#264869}html.dark-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .menu-trigger[_ngcontent-%COMP%]   i[_ngcontent-%COMP%]{top:-4px;right:2px}html.dark-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .menus-box[_ngcontent-%COMP%]{width:36px;height:calc(100% - 11px)}html.dark-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .menus-box.stack-mode[_ngcontent-%COMP%]     li:nth-child(2){opacity:.5;pointer-events:none}html.dark-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .menus-box[_ngcontent-%COMP%]     i.ic-suanziku, html.dark-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .menus-box[_ngcontent-%COMP%]     i.ic-ziguocheng{margin-left:2px}html.dark-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]{width:calc(100% - 36px);overflow:hidden}html.dark-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .title[_ngcontent-%COMP%]{width:100%;height:23px;line-height:23px;padding:0 13px;background-color:#264869;white-space:nowrap;border-top:1px solid #174064;color:#c8d4db;display:flex;justify-content:space-between}html.dark-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]{height:calc(100% - 23px)}html.dark-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]     .dy-search{margin:8px 8px 0;width:calc(100% - 16px)}html.dark-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]     .tree-box{height:100%}html.dark-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content.searchable[_ngcontent-%COMP%]     .tree-box{height:calc(100% - 33px)}html.dark-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]{padding:10px;background-color:#fff;border:solid 1px #174064;border-radius:3px;display:flex;align-items:center;margin-top:3px;margin-bottom:15px}html.dark-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]   .corner[_ngcontent-%COMP%]{right:1px;bottom:1px;width:0;height:0;border-bottom:6px solid #50a0e5;border-left:6px solid transparent;cursor:pointer;transition:all .15s}html.dark-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]   .corner[_ngcontent-%COMP%]   .del-box[_ngcontent-%COMP%]{left:-17px;top:-15px;padding:0 2px;color:#50a0e5;font-size:18px;opacity:0;transition:opacity .15s}html.dark-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]   .corner[_ngcontent-%COMP%]:hover{border-bottom-color:#0000}html.dark-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]   .corner[_ngcontent-%COMP%]:hover   .del-box[_ngcontent-%COMP%]{opacity:1}html.dark-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item.selected[_ngcontent-%COMP%]{background-color:#50a0e533;border-color:#50a0e5}html.dark-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]   .icon-box[_ngcontent-%COMP%]{width:70px;height:70px;border:solid 1px #174064;border-radius:3px;margin-right:15px}html.dark-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]   .info-box[_ngcontent-%COMP%]{flex:1}html.dark-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]   .info-box[_ngcontent-%COMP%]   p[_ngcontent-%COMP%]{display:flex;justify-content:space-between;margin-bottom:5px}html.dark-blue   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]   .info-box[_ngcontent-%COMP%]   p[_ngcontent-%COMP%]:last-child{margin-bottom:0}html.blue1   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]{width:100%;height:100%;background-color:#fff;border-right:solid 1px #e1e3e8}html.blue1   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .menu-trigger[_ngcontent-%COMP%]{display:block;width:100%;height:11px;background-color:#dfe2e6}html.blue1   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .menu-trigger[_ngcontent-%COMP%]   i[_ngcontent-%COMP%]{top:-4px;right:2px}html.blue1   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .menus-box[_ngcontent-%COMP%]{width:36px;height:calc(100% - 11px)}html.blue1   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .menus-box.stack-mode[_ngcontent-%COMP%]     li:nth-child(2){opacity:.5;pointer-events:none}html.blue1   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .menus-box[_ngcontent-%COMP%]     i.ic-suanziku, html.blue1   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .menus-box[_ngcontent-%COMP%]     i.ic-ziguocheng{margin-left:2px}html.blue1   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]{width:calc(100% - 36px);overflow:hidden}html.blue1   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .title[_ngcontent-%COMP%]{width:100%;height:23px;line-height:23px;padding:0 13px;background-color:#dfe2e6;white-space:nowrap;border-top:1px solid #e1e3e8;color:#606266;display:flex;justify-content:space-between}html.blue1   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]{height:calc(100% - 23px)}html.blue1   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]     .dy-search{margin:8px 8px 0;width:calc(100% - 16px)}html.blue1   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]     .tree-box{height:100%}html.blue1   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content.searchable[_ngcontent-%COMP%]     .tree-box{height:calc(100% - 33px)}html.blue1   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]{padding:10px;background-color:#fff;border:solid 1px #e1e3e8;border-radius:3px;display:flex;align-items:center;margin-top:3px;margin-bottom:15px}html.blue1   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]   .corner[_ngcontent-%COMP%]{right:1px;bottom:1px;width:0;height:0;border-bottom:6px solid #409eff;border-left:6px solid transparent;cursor:pointer;transition:all .15s}html.blue1   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]   .corner[_ngcontent-%COMP%]   .del-box[_ngcontent-%COMP%]{left:-17px;top:-15px;padding:0 2px;color:#409eff;font-size:18px;opacity:0;transition:opacity .15s}html.blue1   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]   .corner[_ngcontent-%COMP%]:hover{border-bottom-color:#0000}html.blue1   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]   .corner[_ngcontent-%COMP%]:hover   .del-box[_ngcontent-%COMP%]{opacity:1}html.blue1   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item.selected[_ngcontent-%COMP%]{background-color:#d9e7fd;border-color:#409eff}html.blue1   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]   .icon-box[_ngcontent-%COMP%]{width:70px;height:70px;border:solid 1px #e1e3e8;border-radius:3px;margin-right:15px}html.blue1   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]   .info-box[_ngcontent-%COMP%]{flex:1}html.blue1   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]   .info-box[_ngcontent-%COMP%]   p[_ngcontent-%COMP%]{display:flex;justify-content:space-between;margin-bottom:5px}html.blue1   [_nghost-%COMP%]   .left-panel[_ngcontent-%COMP%]   .tree-box[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%]   .v-item[_ngcontent-%COMP%]   .info-box[_ngcontent-%COMP%]   p[_ngcontent-%COMP%]:last-child{margin-bottom:0}"]}),i})()}}]);