(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-60655986"],{"676c":function(e,t,a){"use strict";a("d367")},"6e03":function(e,t,a){"use strict";a("7f1c")},7749:function(e,t,a){"use strict";a("9849")},"7f1c":function(e,t,a){},"924c":function(e,t,a){"use strict";a.r(t);var i=function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",[a("el-card",{staticClass:"panel-header",staticStyle:{"margin-bottom":"20px"},attrs:{"body-style":"padding:0;"}},[a("div",{staticStyle:{display:"flex","justify-content":"space-between"},attrs:{slot:"header"},slot:"header"},[a("span",[a("span",{staticClass:"back-button",on:{click:function(t){return e.$router.go(-1)}}},[a("i",{staticClass:"el-icon-back"}),a("span",[e._v(e._s(e.$t("common.back")))])]),"create"!==this.$route.params.id?a("span",[e._v(e._s(e.$t("chart.createNewChart")))]):a("span",[e._v(e._s(e.$t("chart.editChart")))]),a("el-button",{staticStyle:{"margin-left":"10px"},attrs:{size:"mini",type:"text"},on:{click:e.viewAllChart}},[e._v(e._s(e.$t("chart.allCharts")))])],1),a("span",[a("el-button",{staticStyle:{float:"right",margin:"0 10px 0 0"},attrs:{size:"mini",type:"primary",icon:"el-icon-download"},on:{click:e.handleDownload}}),"create"!==this.$route.params.id?a("el-button",{staticStyle:{float:"right",margin:"0 10px 0 0"},attrs:{size:"mini",type:"primary"},on:{click:e.handleLinkDB}},[e._v(e._s(e.$t("chart.addToDashboard")))]):e._e(),a("el-button",{staticStyle:{float:"right",margin:"0 10px 0 0"},attrs:{size:"mini",type:"primary",icon:"el-icon-save"},on:{click:e.handleSave}},[e._v(e._s(e.$t("common.save")))]),"create"!==this.$route.params.id?a("el-button",{staticStyle:{float:"right",margin:"0 10px 0 0"},attrs:{size:"mini",type:"primary"},on:{click:function(t){return e.$router.replace("/chartpanel/create")}}},[e._v(e._s(e.$t("chart.createNewChart")))]):e._e()],1)])]),a("div",{staticClass:"app-container",staticStyle:{display:"flex"}},[a("el-card",{staticStyle:{width:"300px","margin-right":"20px","text-align":"center"},attrs:{id:"dataPanel"}},[a("data-panel",{ref:"dataPanel",attrs:{"result-loading":e.loading,"data-src":e.dataSrc},on:{change:e.handleDataSrcChange}})],1),a("el-card",{staticStyle:{width:"100%"},attrs:{"body-style":"padding: 10px 20px;"}},[a("div",{staticClass:"form-wrapper"},[a("el-form",{staticClass:"analysis-form",attrs:{id:"formPanel",size:"mini"}},[a("el-form-item",{attrs:{id:"dimensionInput",label:e.$t("chart.dimensions")}},[a("draggable",{staticClass:"draggable-wrapper",attrs:{group:{name:"col",pull:!0,put:!0}},on:{change:e.handleDimensionChange},model:{value:e.sharedState.dimensions,callback:function(t){e.$set(e.sharedState,"dimensions",t)},expression:"sharedState.dimensions"}},e._l(e.sharedState.dimensions,(function(t){return a("el-tag",{key:t.Column,staticClass:"draggable-item",attrs:{size:"small",closable:""},on:{close:function(a){return e.handleCloseDimensionTag(t)}}},[e._v(e._s(t.cname))])})),1)],1),a("el-form-item",{attrs:{id:"fieldInput",label:e.$t("chart.values")}},[a("draggable",{staticClass:"draggable-wrapper",attrs:{group:{name:"col",pull:!0,put:!0}},on:{change:e.handleColChange},model:{value:e.sharedState.caculCols,callback:function(t){e.$set(e.sharedState,"caculCols",t)},expression:"sharedState.caculCols"}},e._l(e.sharedState.caculCols,(function(t){return a("el-tag",{key:t.cname,staticClass:"selected-field",attrs:{size:"small",closable:""},on:{close:function(a){return e.handleCloseColTag(t)}}},[a("el-select",{staticClass:"draggable-item",staticStyle:{background:"rgba(0,0,0,0)"},attrs:{size:"mini",closable:""},model:{value:t.calculFunc,callback:function(a){e.$set(t,"calculFunc",a)},expression:"col.calculFunc"}},e._l(t.availableFunc,(function(e,i){return a("el-option",{key:i,attrs:{label:t.cname+"("+e.name+")",value:e.func}})})),1)],1)})),1)],1),a("orderPanel",{model:{value:e.orderByStrs,callback:function(t){e.orderByStrs=t},expression:"orderByStrs"}}),a("filterPanel",{attrs:{filters:e.currentFilters,disabled:!e.allSelected||0===e.allSelected.length},on:{"update:filters":function(t){e.currentFilters=t},change:e.handleAddFilter}}),a("el-form-item",[a("div",{staticClass:"limit-input"},[a("span",{directives:[{name:"show",rawName:"v-show",value:!e.editLimit,expression:"!editLimit"}]},[e._v("\n                "+e._s(e.$t("chart.limit",[e.limit]))+"\n                "),a("el-button",{attrs:{type:"text"},on:{click:function(t){e.editLimit=!0}}},[e._v(e._s(e.$t("common.edit")))])],1),a("span",{directives:[{name:"show",rawName:"v-show",value:e.editLimit,expression:"editLimit"}]},[a("el-input-number",{staticStyle:{width:"100px"},attrs:{disabled:e.loading,size:"mini"},on:{blur:function(t){e.editLimit=!1}},model:{value:e.limit,callback:function(t){e.limit=t},expression:"limit"}}),a("el-button",{attrs:{size:"mini"},on:{click:function(t){e.editLimit=!1}}},[e._v(e._s(e.$t("common.confirm")))])],1)])])],1),a("el-form",{staticClass:"chart-form",attrs:{size:"mini","label-position":"top"}},[a("el-form-item",{attrs:{label:e.$t("chart.chartName")+":"}},[a("el-input",{attrs:{size:"mini",placeholder:e.$t("chart.namePlaceholder")},model:{value:e.chartName,callback:function(t){e.chartName=t},expression:"chartName"}})],1),a("el-form-item",{attrs:{label:e.$t("chart.chartDesc")+":"}},[a("el-input",{attrs:{size:"mini",placeholder:e.$t("chart.descPlaceholder")},model:{value:e.chartDesc,callback:function(t){e.chartDesc=t},expression:"chartDesc"}})],1)],1)],1),a("visualize-panel",{directives:[{name:"loading",rawName:"v-loading",value:e.loading,expression:"loading"}],attrs:{id:"vizPanel",data:e.result,"chart-type":e.chartType,schema:e.allSelected},on:{"update:chartType":function(t){e.chartType=t},"update:chart-type":function(t){e.chartType=t}}})],1)],1),a("el-dialog",{attrs:{title:e.$t("chart.myChart"),visible:e.showMyCharts},on:{"update:visible":function(t){e.showMyCharts=t}}},[a("div",[a("el-table",{directives:[{name:"loading",rawName:"v-loading",value:e.loading,expression:"loading"}],attrs:{data:e.myChartList}},[a("el-table-column",{attrs:{label:e.$t("chart.chartName"),width:"200",prop:"chart_name"}}),a("el-table-column",{attrs:{label:e.$t("chart.chartDesc"),prop:"chart_desc"}}),a("el-table-column",{attrs:{label:e.$t("common.operation"),width:"200",align:"center"},scopedSlots:e._u([{key:"default",fn:function(t){return[a("el-button",{attrs:{size:"mini",type:"primary",icon:"el-icon-edit"},on:{click:function(a){return e.switchChart(t.row)}}},[e._v(e._s(e.$t("common.edit")))]),a("el-button",{attrs:{size:"mini",type:"danger",icon:"el-icon-delete"},on:{click:function(a){return e.deleteChart(t.row)}}},[e._v(e._s(e.$t("common.delete")))])]}}])})],1),a("pagination",{directives:[{name:"show",rawName:"v-show",value:e.total>0,expression:"total>0"}],attrs:{total:e.total,page:e.queryParams.pageNum,limit:e.queryParams.pageSize},on:{"update:page":function(t){return e.$set(e.queryParams,"pageNum",t)},"update:limit":function(t){return e.$set(e.queryParams,"pageSize",t)},pagination:e.viewAllChart}})],1),a("span",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},[a("el-button",{attrs:{type:"primary",size:"mini"},on:{click:function(t){e.showMyCharts=!1}}},[e._v(e._s(e.$t("common.close")))])],1)]),a("el-dialog",{attrs:{title:e.$t("dashboard.dashboardList"),visible:e.showDashboards},on:{"update:visible":function(t){e.showDashboards=t}}},[a("div",{staticStyle:{"text-align":"center"}},[a("el-select",{attrs:{size:"small"},model:{value:e.selectedDb,callback:function(t){e.selectedDb=t},expression:"selectedDb"}},e._l(e.dashboardList,(function(t){return a("el-option",{key:t.objectId,attrs:{label:t.cname,disabled:e.isDbDisbaled(t),value:t.objectId}})})),1)],1),a("span",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},[a("el-button",{attrs:{type:"primary",size:"small"},on:{click:function(t){e.showDashboards=!1}}},[e._v(e._s(e.$t("common.cancel")))]),a("el-button",{attrs:{type:"primary",size:"small"},on:{click:e.linkDb}},[e._v(e._s(e.$t("common.confirm")))])],1)]),a("el-dropdown",{staticClass:"help-center-wrapper",attrs:{placement:"top",size:"mini"},on:{command:e.handleHelp}},[a("div",{staticClass:"help-center"},[a("i",{staticClass:"el-icon-question"})]),a("el-dropdown-menu",{attrs:{slot:"dropdown",size:"mini"},slot:"dropdown"},[a("el-dropdown-item",{attrs:{command:"guide"}},[e._v(e._s(this.$t("common.openGuide")))])],1)],1)],1)},r=[],s=(a("28a5"),a("7514"),a("a481"),a("1980")),n=a.n(s),l=a("c24c"),o=a.n(l),c=(a("01d7"),function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("el-form-item",{attrs:{label:e.$t("chart.filters")}},[e._l(e.currentFilters,(function(t,i){return a("el-tag",{key:i,attrs:{closable:""},on:{close:function(t){return e.handleClosefilter(i)},click:function(a){return e.handleEditFilter(t)}}},[e._v(e._s(e.generateFilterSentence(t)))])})),a("el-button",{staticStyle:{width:"150px"},attrs:{disabled:e.disabled,type:"primary",size:"mini"},on:{click:function(t){e.visible=!0}}},[e._v(e._s(e.$t("chart.addFilters")))]),a("el-dialog",{attrs:{visible:e.visible,width:"500px",title:e.$t("chart.addFilters")}},[a("el-form",{attrs:{"label-width":"150px"}},[a("el-form-item",{staticClass:"el-form-item",attrs:{label:e.$t("chart.filterField")}},[a("el-select",{staticStyle:{width:"220px"},attrs:{size:"mini",placeholder:e.$t("chart.selectFilterField")},model:{value:e.filteCol,callback:function(t){e.filteCol=t},expression:"filteCol"}},e._l(e.sharedState.allCols,(function(e){return a("el-option",{key:e.Column,attrs:{label:e.cname,value:e.Column}})})),1)],1),a("el-form-item",{staticClass:"el-form-item",attrs:{label:e.$t("chart.filterOperator")}},[a("el-select",{staticStyle:{width:"220px"},attrs:{size:"mini",placeholder:e.$t("chart.selectFilterOperator")},model:{value:e.filterOperator,callback:function(t){e.filterOperator=t},expression:"filterOperator"}},e._l(e.filterOperatorOpts,(function(e){return a("el-option",{key:e.name,attrs:{label:""+e.name,value:e.operator}})})),1)],1),-1===e.currentOperatorParamNum?a("el-form-item",{staticClass:"el-form-item",attrs:{label:e.$t("chart.comparedValue")}},[e._l(e.arrValue,(function(t,i){return a("el-tag",{key:i,attrs:{closable:""},on:{close:e.handleRemove}},[e._v(e._s(t))])})),a("el-input",{staticStyle:{width:"220px"},attrs:{size:"mini",type:"text"},model:{value:e.value3,callback:function(t){e.value3=t},expression:"value3"}}),a("el-button",{attrs:{size:"mini",type:"primary"},on:{click:e.handleAdd}},[e._v("Add")])],2):a("el-form-item",{staticClass:"el-form-item",attrs:{label:e.$t("chart.comparedValue")}},[a("el-input",{staticStyle:{width:"220px"},attrs:{size:"mini",type:"text"},model:{value:e.value1,callback:function(t){e.value1=t},expression:"value1"}}),a("span",{directives:[{name:"show",rawName:"v-show",value:2===e.currentOperatorParamNum,expression:"currentOperatorParamNum===2"}]},[e._v("~")]),a("el-input",{directives:[{name:"show",rawName:"v-show",value:2===e.currentOperatorParamNum,expression:"currentOperatorParamNum===2"}],staticStyle:{width:"220px"},attrs:{type:"text"},model:{value:e.value2,callback:function(t){e.value2=t},expression:"value2"}})],1)],1),a("span",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},[a("el-button",{attrs:{size:"mini"},on:{click:function(t){e.visible=!1}}},[e._v(e._s(e.$t("common.cancel")))]),a("el-button",{attrs:{size:"mini",type:"primary"},on:{click:e.handleConfirm}},[e._v(e._s(e.$t("common.confirm")))])],1)],1)],2)}),d=[],u=(a("7f7f"),a("20d6"),a("aa35")),h=a("a5e0"),m=a("f0ee"),p={props:{disabled:{default:!1},filters:{type:Array}},data:function(){return{visible:!1,filterOperatorOpts:Object(u["b"])(),filterStrs:[],filteCol:void 0,filterOperator:void 0,value1:void 0,value2:void 0,value3:void 0,arrValue:[],currentFilters:[],sharedState:m["a"].state}},computed:{currentOperatorParamNum:function(){var e=this,t=Object(u["b"])().find((function(t){return t.operator===e.filterOperator}));return t?t.paramNum:1},lang:function(){return this.$store.state.app.lang}},watch:{filters:{deep:!0,handler:function(e){this.currentFilters=e}},lang:function(e){this.filterOperatorOpts=Object(u["b"])()}},methods:{handleClosefilter:function(e){this.currentFilters.splice(e,1),this.handleSubmit()},handleEditFilter:function(e){this.visible=!0,this.filteCol=e.filteCol,this.filterOperator=e.filterOperator,this.value1=e.value.value1,this.value2=e.value.value2,this.arrValue=e.value.arrValue},handleAdd:function(){this.arrValue.push(this.value3),this.value3=void 0},handleRemove:function(e){this.arrValue.splice(this.arrValue.indexOf(e),1)},handleConfirm:function(){var e=this;if(this.filteCol&&this.filterOperator){var t={filteCol:this.filteCol,colType:this.sharedState.allCols.find((function(t){return t.Column===e.filteCol})).Type,filterOperator:this.filterOperator,value:{value1:this.value1,value2:this.value2,arrValue:this.arrValue},operatorParamNum:this.operatorParamNum(this.filterOperator)},a=this.currentFilters.findIndex((function(t){return t.filteCol===e.filteCol&&t.filterOperator===e.filterOperator}));a>=0?this.currentFilters.splice(a,1,t):this.currentFilters.push(t),this.handleSubmit()}else this.$message({type:"warning",message:this.$t("chart.filterCantBeEmpty")})},handleSubmit:function(){var e=this.currentFilters.map(h["a"]);this.$emit("change",e.join(" and ")),this.$emit("update: filters",this.currentFilters),this.visible=!1},generateFilterSentence:function(e){return Object(h["a"])(e)},operatorParamNum:function(e){var t=Object(u["b"])().find((function(t){return t.operator===e}));return t?t.paramNum:1},needQuotation:function(e){var t=this.sharedState.allCols.find((function(t){return t.Column===e})).Type;return t.indexOf("(")>=0?u["a"].find((function(e){return e.name===t.split("(")[0].toLowerCase()})).needQuotation:u["a"].find((function(e){return e.name===t.toLowerCase()})).needQuotation},addQuotation:function(e){return{value1:"'".concat(e.value1,"'"),value2:"'".concat(e.value2,"'"),arrValue:e.arrValue.map((function(e){return"'".concat(e,"'")}))}}}},f=p,b=(a("6e03"),a("2877")),v=Object(b["a"])(f,c,d,!1,null,"3dbac577",null),g=v.exports,y=function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("el-form-item",{attrs:{label:e.$t("chart.order")}},[a("draggable",{staticStyle:{display:"inline-block"},attrs:{group:{name:"orderBy",pull:!1,put:!1}},model:{value:e.orderByStrs,callback:function(t){e.orderByStrs=t},expression:"orderByStrs"}},e._l(e.orderByStrs,(function(t,i){return a("el-tag",{key:i,attrs:{closable:"",size:"small"},on:{close:e.handleCloseOrderBy}},[e._v(e._s(t))])})),1),a("el-cascader",{staticStyle:{width:"150px"},attrs:{options:e.orderByOption,disabled:0===e.orderByOption.length,size:"mini",placeholder:e.$t("chart.selectOrderBy")},on:{change:e.handleOrderByChange},model:{value:e.orderBy,callback:function(t){e.orderBy=t},expression:"orderBy"}})],1)},S=[],C=(a("ac6a"),{components:{draggable:n.a},props:{value:{required:!0,type:Array}},data:function(){return{orderBy:[]}},computed:{allSelected:function(){return m["a"].state.caculCols.concat(m["a"].state.dimensions)},orderByStrs:{set:function(e){this.$emit("input",e)},get:function(){return this.value}},orderByOption:function(){var e=this;return this.allSelected.map((function(t){return{value:t.Column,label:t.cname,children:[{value:"desc",label:e.$t("chart.descend")},{value:"asc",label:e.$t("chart.ascend")}]}}))}},watch:{"store.state.dimensions":function(e){this.watchHandler(e)},"store.state.caculCols":function(e){this.watchHandler(e)}},methods:{watchHandler:function(e){var t=this;this.orderByStrs.forEach((function(a,i){var r=a.split(" ")[0];e.findIndex((function(e){return e.Column===r}))||t.orderByStrs.splice(i,1)}))},handleOrderByChange:function(e){this.orderBy=[];var t=this.orderByStrs.findIndex((function(t){return t.indexOf(e[0])>=0}));t>=0?this.orderByStrs.splice(t,1,"".concat(e[0]," ").concat(e[1])):this.orderByStrs.push("".concat(e[0]," ").concat(e[1]))},handleCloseOrderBy:function(e){this.orderByStrs.splice(this.orderByStrs.indexOf(e),1)}}}),_=C,w=Object(b["a"])(_,y,S,!1,null,null,null),$=w.exports,x=a("edf6"),k=function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",[a("el-form",{staticClass:"panel",staticStyle:{"text-align":"left"},attrs:{"label-position":"top"}},[a("el-form-item",{directives:[{name:"show",rawName:"v-show",value:e.dataSrcVisible,expression:"dataSrcVisible"}],attrs:{label:e.$t("common.dataSource")+":"}},[a("el-select",{staticStyle:{width:"200px"},attrs:{size:"mini",filterable:"",placeholder:e.$t("dataSource.sourcePlaceholder"),clearable:""},on:{change:e.handleBaseChange},model:{value:e.selectedBase,callback:function(t){e.selectedBase=t},expression:"selectedBase"}},e._l(e.baseList,(function(e){return a("el-option",{key:e.source_id,attrs:{label:e.base_alias||e.database,value:e.source_id}})})),1)],1),a("el-form-item",[a("el-select",{directives:[{name:"show",rawName:"v-show",value:e.dataSrcVisible,expression:"dataSrcVisible"}],staticStyle:{width:"200px"},attrs:{disabled:!e.selectedBase,size:"mini",filterable:"",placeholder:e.$t("dataSource.tablePlaceholder"),clearable:""},on:{change:e.handleDataSrcChange},model:{value:e.selectedTable,callback:function(t){e.selectedTable=t},expression:"selectedTable"}},e._l(e.tableList,(function(e){return a("el-option",{key:e.table_name,attrs:{label:e.table_alias||e.table_name,value:e.table_name}})})),1)],1),a("el-form-item",{directives:[{name:"show",rawName:"v-show",value:!e.dataSrcVisible,expression:"!dataSrcVisible"}],attrs:{label:e.$t("dataSource.table")+":"}},[a("span",{staticStyle:{"font-size":"12px","margin-right":"5px"}},[e._v(e._s(e.selectedBaseName)+"/"+e._s(e.selectedTableName))]),a("el-button",{attrs:{type:"text",size:"mini"},on:{click:e.editDataSrc}},[e._v(e._s(e.$t("common.edit")))])],1),a("el-form-item",{attrs:{label:e.$t("dataSource.fields")+":"}},[a("draggable",{directives:[{name:"loading",rawName:"v-loading",value:e.schemaLoading,expression:"schemaLoading"}],attrs:{group:{name:"col",pull:"clone",put:!1},move:e.handleMove},model:{value:e.tableSchema,callback:function(t){e.tableSchema=t},expression:"tableSchema"}},e._l(e.tableSchema,(function(t){return a("div",{key:t.Column,staticClass:"drag-list-item"},[a("i",{staticClass:"el-icon-rank",staticStyle:{"font-size":"12px",color:"#409EFF"}}),e._v("\n          "+e._s(t.cname)+"\n        ")])})),0)],1)],1)],1)},D=[],O=a("b414"),B=a("f77d"),z={components:{draggable:n.a},props:{resultLoading:{default:!1},dataSrc:{requred:!0}},data:function(){return{schemaLoading:!1,baseList:[],tableList:[],selectedTable:void 0,tableSchema:void 0,dataSrcVisible:"create"===this.$route.params.id,existWarning:null,selectedBase:void 0,queryParams:{pageNum:1,pageSize:200,tableName:void 0,sourceId:void 0}}},computed:{allSelected:function(){return m["a"].state.dimensions.concat(m["a"].state.caculCols)},selectedBaseName:function(){var e=this,t=this.baseList.find((function(t){return t.source_id===e.selectedBase}));return t?t.base_alias||t.database:""},selectedTableName:function(){var e=this,t=this.tableList.find((function(t){return t.table_name===e.selectedTable}));return t?t.table_alias||t.table_name:""}},created:function(){this.getBaseList()},methods:{getBaseList:function(){var e=this;Object(O["e"])(this.queryParams).then((function(t){e.baseList=t.rows})).catch((function(){}))},initWithDataSrc:function(e){e?(this.selectedTable=e.table,this.selectedBase=e.source_id,this.fetchTables(),this.fetchSchema()):(this.selectedTable="",this.selectedBase="",this.tableSchema=[],this.dataSrcVisible=!0)},editDataSrc:function(){this.dataSrcVisible=!0,this.selectedTable=void 0},handleBaseChange:function(){this.fetchTables()},fetchTables:function(){var e=this;Object(O["l"])(this.selectedBase).then((function(t){e.tableList=t.rows})).catch((function(){}))},handleDataSrcChange:function(){this.dataSrcVisible=!1,this.fetchSchema(),m["a"].setAllColsAction([]),this.$emit("change",{table:this.selectedTable,source_id:this.selectedBase})},fetchSchema:function(){var e=this;this.selectedTable?(this.schemaLoading=!0,this.queryParams.tableName=this.selectedTable,this.queryParams.sourceId=this.selectedBase,Object(O["f"])(this.queryParams).then((function(t){e.schemaLoading=!1,e.tableSchema=t.rows.map((function(e,t){return{Column:e.field_name,Type:e.field_type,cname:e.field_cname,id:t}})),m["a"].setAllColsAction(e.tableSchema)})).catch((function(){}))):this.tableSchema=[]},handleMove:function(e,t){var a=this;if(this.allSelected.find((function(t){return t.Column===e.draggedContext.element.Column})))return this.existWarning||(this.existWarning=this.$message({type:"warning",message:this.$t("chart.fieldExisted"),onClose:function(e){a.existWarning=null}})),!1}}},N=z,P=(a("7749"),Object(b["a"])(N,k,D,!1,null,"02ff7166",null)),L=P.exports,T=a("c638"),F=a("5fd4"),j=a("ed08"),A=a("9225"),I=[{element:"#dataPanel",popover:{title:A["a"].t("guide.dataPanel"),description:A["a"].t("guide.dataPanelDesc"),position:"right"}},{element:"#formPanel",popover:{title:A["a"].t("guide.formPanel"),description:A["a"].t("guide.formPanelDesc"),position:"bottom"}},{element:"#dimensionInput",popover:{title:A["a"].t("guide.dimensionInput"),description:A["a"].t("guide.dimensionInputDesc"),position:"top"}},{element:"#fieldInput",popover:{title:A["a"].t("guide.fieldInput"),description:A["a"].t("guide.fieldInputDesc"),position:"bottom"}},{element:"#vizPanel",popover:{title:A["a"].t("guide.vizPanel"),description:A["a"].t("guide.vizPanelDesc"),position:"top"}}],V=I,q=new o.a,E={name:"ChartPanel",components:{visualizePanel:x["a"],dataPanel:L,draggable:n.a,filterPanel:g,orderPanel:$},data:function(){return{result:[],dataSrc:{},limit:200,orderByStrs:[],filterStr:void 0,editLimit:!1,currentFilters:[],sharedState:m["a"].state,chartType:"table",chartName:void 0,chartDesc:void 0,showMyCharts:!1,myChartList:[],showDashboards:!1,dashboardList:[],selectedDb:void 0,linkedDbIds:[],execInstance:null,loading:!1,total:0,queryParams:{pageNum:1,pageSize:10}}},computed:{allSelected:function(){return m["a"].state.dimensions.concat(m["a"].state.caculCols)},sqlSentence:function(){return Object(h["b"])({dataSrc:this.dataSrc.table,selectedCalcul:this.sharedState.caculCols,selectedDimension:this.sharedState.dimensions,orderByStrs:this.orderByStrs,filterStr:this.filterStr,limit:this.limit})}},watch:{sqlSentence:function(e){e?this.fetchData(e):this.result=[]},"$route.params.id":{immediate:!0,handler:function(){var e=this;"create"!==this.$route.params.id?Object(T["d"])(this.$route.params.id).then((function(t){var a=t.data;e.chartName=a.chart_name,e.chartDesc=a.chart_desc;var i=a.content||{};e.dataSrc.table=i.dataSrc,e.dataSrc.source_id=a.source_id,e.chartType=i.chartType,e.limit=i.limit||200,e.currentFilters=i.filters,e.orderByStrs=i.orderByStrs,m["a"].setCaculColsAction(i.selectedCalcul),m["a"].setDimensionsAction(i.selectedDimension),e.$refs.dataPanel.initWithDataSrc(e.dataSrc)})):(this.chartName=void 0,this.chartDesc=void 0,m["a"].setCaculColsAction([]),m["a"].setDimensionsAction([]),this.$nextTick((function(){e.$refs.dataPanel.initWithDataSrc()})))}}},methods:{fetchData:function(e){var t=this;this.loading&&this.execInstance&&this.execInstance.cancel(),this.loading=!0,this.execInstance=Object(B["a"])(),this.execInstance.fetch({source_id:this.dataSrc.source_id,sql:e}).then((function(e){t.loading=!1,t.result=e.data}))},handleDataSrcChange:function(e){this.dataSrc=e,m["a"].setCaculColsAction([]),m["a"].setDimensionsAction([]),this.filterStr=void 0,this.orderByStrs=[]},handleColChange:function(e){e.added&&m["a"].addCaculColAction(e.added.element)},handleDimensionChange:function(e){e.added&&m["a"].addDimensionAction(e.added.element)},handleCloseColTag:function(e){m["a"].deleteCaculColAction(e)},handleCloseDimensionTag:function(e){m["a"].deleteDimensionAction(e)},handleAddFilter:function(e){this.filterStr=e},handleSave:function(){var e=this;if(this.chartName){var t="create"===this.$route.params.id?void 0:this.$route.params.id,a=JSON.stringify(this.currentFilters).replace(/>/g,"&lt;");a=a.replace(/</g,"&gt;");var i={dataSrc:this.dataSrc.table,source_id:this.dataSrc.source_id,orderByStrs:this.orderByStrs,limit:this.limit,selectedCalcul:this.sharedState.caculCols,selectedDimension:this.sharedState.dimensions,chartType:this.chartType,filters:JSON.parse(a)},r={chart_id:t,chart_name:this.chartName,source_id:this.dataSrc.source_id,chart_desc:this.chartDesc,content:i};t?Object(T["e"])(r).then((function(t){200===t.code?e.msgSuccess(e.$t("common.saveSuccess")):403===t.code&&e.msgError(t.msg)})):Object(T["b"])(r).then((function(t){e.msgSuccess(e.$t("common.saveSuccess")),e.$router.replace("/chartpanel/".concat(t.data.id))}))}else this.$message({type:"warning",message:this.$t("chart.chartNameWarning")})},handleLinkDB:function(){var e=this;this.showDashboards=!0,this.getDbByChart(this.$route.params.id),Object(F["d"])().then((function(t){e.dashboardList=t.data.dashboards}))},getDbByChart:function(e){var t=this;Object(F["e"])(e).then((function(e){t.linkedDbIds=e.data||[]}))},isDbDisbaled:function(e){return!!this.linkedDbIds.find((function(t){return t===e.objectId}))},linkDb:function(){var e=this,t={chart_id:this.$route.params.id,dashboard_id:this.selectedDb};this.showDashboards=!1,Object(F["a"])(t).then((function(t){e.getDbByChart(e.$route.params.id),e.$message({type:"success",message:e.$t("common.saveSuccess")})}))},viewAllChart:function(){var e=this;this.showMyCharts=!0,this.loading=!0,Object(T["a"])(this.addDateRange(this.queryParams,this.dateRange)).then((function(t){e.myChartList=t.rows,e.total=t.total,e.loading=!1}))},switchChart:function(e){var t=this;this.$confirm(this.$t("chart.beforeLeaveConfirm"),this.$t("common.confirm")).then((function(){t.$router.replace("/chartpanel/".concat(e.chart_id)),t.showMyCharts=!1}))},deleteChart:function(e){var t=this;this.$confirm(this.$t("chart.deleteConfirm",e.chart_name),this.$t("common.confirm")).then((function(){Object(T["c"])({chart_id:e.chart_id}).then((function(a){403!==a.code?(t.$route.params.id===e.chart_id?(t.$router.push("/chartpanel/create"),t.showMyCharts=!1):t.viewAllChart(),t.$message({type:"success",message:t.$t("common.deleteSuccess")})):t.msgError(a.msg)}))}))},handleHelp:function(e){"guide"===e&&(q.defineSteps(V),q.start())},handleDownload:function(){var e=this;Promise.all([a.e("chunk-41515614"),a.e("chunk-58293907")]).then(a.bind(null,"4bf8d")).then((function(t){var a=e.allSelected.map((function(e){return e.Column})),i=a,r=e.formatJson(i,e.result);t.export_json_to_excel({header:a,data:r,filename:"DataExport"+Object(j["b"])(Date.now(),"{m}{d}{h}{i}{s}"),autoWidth:!0})}))},formatJson:function(e,t){return t.map((function(t){return e.map((function(e){var a=e.split(".");return a.length<=1?t[e]:a.reduce((function(e,t){return e[t]?e[t]:"--"}),t)}))}))}}},M=E,W=(a("676c"),Object(b["a"])(M,i,r,!1,null,"627ed132",null));t["default"]=W.exports},9849:function(e,t,a){},d367:function(e,t,a){}}]);