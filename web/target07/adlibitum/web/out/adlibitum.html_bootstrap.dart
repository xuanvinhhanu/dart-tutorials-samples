import "dart:html" as CB;import "dart:async" as LC;import "dart:collection" as MC;import "dart:isolate" as pD;class ZD{static const  aD="Chrome";final  TD;final  minimumVersion;const ZD(this.TD,[this.minimumVersion]);}class bD{const bD();}class cD{final  name;const cD(this.name);}class dD{const dD();}class eD{const eD();}final l=new q();var jB=''; get kB{if(LB){MB(l,o.v,'sillyword');}return jB;}set kB( g){if(KB(l)){NB(l,o.v,'sillyword',jB,g);}jB=g;}var lB=''; get mB{if(LB){MB(l,o.v,'adjective');}return lB;}set mB( g){if(KB(l)){NB(l,o.v,'adjective',lB,g);}lB=g;}var nB=''; get oB{if(LB){MB(l,o.v,'animal');}return nB;}set oB( g){if(KB(l)){NB(l,o.v,'animal',nB,g);}nB=g;}var pB=''; get qB{if(LB){MB(l,o.v,'bodypart');}return pB;}set qB( g){if(KB(l)){NB(l,o.v,'bodypart',pB,g);}pB=g;}var rB=''; get sB{if(LB){MB(l,o.v,'verb');}return rB;}set sB( g){if(KB(l)){NB(l,o.v,'verb',rB,g);}rB=g;}var tB=''; get uB{if(LB){MB(l,o.v,'adverb');}return tB;}set uB( g){if(KB(l)){NB(l,o.v,'adverb',tB,g);}tB=g;} dC(){}bool eC(){if(kB!=''&&mB!=''&&oB!=''&&qB!=''&&sB!=''&&uB!=''){return true;}else{return false;}} fC(){var uD=SD;final vD=new CB.ParagraphElement(),wD=new CB.ParagraphElement(),xD=new CB.ParagraphElement();var yD,zD,AE,BE,CE,DE,EE;var FE=new GD(uD);yD=uD.nodes[3];FE.listen(yD.onInput,(h){kB=yD.value;});FE.SB(()=>kB,(g){if(yD.value!=g)yD.value=g;},false,false);zD=uD.nodes[5];FE.listen(zD.onInput,(h){mB=zD.value;});FE.SB(()=>mB,(g){if(zD.value!=g)zD.value=g;},false,false);BE=uD.nodes[7];FE.listen(BE.onInput,(h){oB=BE.value;});FE.SB(()=>oB,(g){if(BE.value!=g)BE.value=g;},false,false);CE=uD.nodes[9];FE.listen(CE.onInput,(h){qB=CE.value;});FE.SB(()=>qB,(g){if(CE.value!=g)CE.value=g;},false,false);DE=uD.nodes[11];FE.listen(DE.onInput,(h){sB=DE.value;});FE.SB(()=>sB,(g){if(DE.value!=g)DE.value=g;},false,false);EE=uD.nodes[13];FE.listen(EE.onInput,(h){uB=EE.value;});FE.SB(()=>uB,(g){if(EE.value!=g)EE.value=g;},false,false);AE=uD.nodes[15];FE.VD(AE,()=>eC(),(FE){var GE,HE,IE;IE=vD.clone(true);var JE=FE.RB(()=>kB,false);IE.nodes.addAll([new CB.Text('Dear Ms. '),JE,new CB.Text(',')]);GE=wD.clone(true);var KE=FE.RB(()=>mB,false);var LE=FE.RB(()=>oB,false);var ME=FE.RB(()=>qB,false);var NE=FE.RB(()=>sB,false);GE.nodes.addAll([new CB.Text('Little '),KE,new CB.Text(' Billy missed school\n        because he was sick with wild-'),LE,new CB.Text(' flu.\n        His '),ME,new CB.Text(' swelled up and fell off.\n        He can no longer '),NE,new CB.Text('.')]);HE=xD.clone(true);var OE=FE.RB(()=>uB,false);HE.nodes.addAll([new CB.Text('Most '),OE,new CB.Text(' yours, Billy\'s mother')]);FE.addAll([new CB.Text('\n        '),IE,new CB.Text('\n        \n        '),GE,new CB.Text('\n        \n        '),HE,new CB.Text('\n      ')]);});FE.aB();FE.insert();}main(){TC=true;dC();fC();}var NC=false;var gC=m.OC;class HB{final  name; get ZC=>(parent==null||parent.name=='')?name:'${parent.ZC}.${name}';final  parent;var PE;var children;var QE;var RE;factory HB( g){if(g.startsWith('.')){throw new ArgumentError("name shouldn't start with a '.'");}if(TB==null)TB=<String,HB>{};if(TB.containsKey(g))return TB[g];var h=g.lastIndexOf('.');var i=null;var j;if(h==-1){if(g!='')i=new HB('');j=g;}else{i=new HB(g.substring(0,h));j=g.substring(h+1);}final k=new HB.qD(j,i);TB[g]=k;return k;}HB.qD(this.name,this.parent):children=new Map<String,HB>(){if(parent!=null)parent.children[name]=this;} get iB{if(NC){if(PE!=null)return PE;if(parent!=null)return parent.iB;}return gC;} WD( g)=>(g>=iB); log( h, j,[k]){if(WD(h)){var i=new vB(h,j,ZC,k);if(NC){var g=this;while (g!=null){g.SE(i);g=g.parent;}}else{hC.SE(i);}}} info( g,[h])=>log(m.OC,g,h); IC( g,[h])=>log(m.iC,g,h); SE( g){if(QE!=null){QE.add(g);}}static  get hC=>new HB('');static var TB;}class m implements Comparable<m>{final  name;final  value;const m(this.name,this.value);static const  OC=const m('INFO',800);static const  iC=const m('WARNING',900); operator==( g)=>g!=null&&value==g.value; operator<( g)=>value<g.value; operator<=( g)=>value<=g.value; operator>( g)=>value>g.value; operator>=( g)=>value>=g.value; compareTo( g)=>value-g.value; get hashCode=>value; toString()=>name;}class vB{final  iB;final  message;final  XD;final  time;final  YD;static var jC=0;var exception;vB(this.iB,this.message,this.XD,[this.exception]):time=new DateTime.now(),YD=vB.jC++ ;}const fD=const gD();typedef  DB( e);typedef  kC( changes);typedef  EB();typedef  lC();class cB{final oldValue;final newValue;final  changes;cB(this.oldValue,this.newValue,[this.changes]); operator==(g){return g is cB&&oldValue==g.oldValue&&newValue==g.newValue&&changes==g.changes;} get hashCode=>yC(oldValue,newValue,changes); toString(){if(changes!=null)return '#<ChangeNotification to ${newValue}: ${changes}>';return '#<ChangeNotification from ${oldValue} to ${newValue}>';}}class o{static const v=1;static const wB=2;static const PC=wB|4;static const QC=wB|8;final  type;final key;final oldValue;final newValue;o(this.type,this.key,this.oldValue,this.newValue); operator==(g){return g is o&&type==g.type&&key==g.key&&oldValue==g.oldValue&&newValue==g.newValue;} get hashCode=>zC(type,key,oldValue,newValue); toString(){var g;switch (type){case v:g='field';break;case wB:g='index';break;case PC:g='insert';break;case QC:g='remove';break;}return '#<ChangeRecord ${g} ${key} from ${oldValue} to ${newValue}>';}} mC(g, i,[ k]){if(g is q){var h=g;return xB(h,(u){i(new cB(h,h,u));});}var j=new dB(g,i,k);if(!j.TE()){return oC;}return j.UE;} xB( g, h){if(g.QB==null)g.QB=new yB();var i=g.QB.add(h);return i.remove;}class q{var QB;var PB;final  hashCode= ++q.nC;static var nC=0;} KB( g)=>g.QB!=null&&g.QB.head!=null; get LB=>OB!=null; MB( g, h,i)=>OB.VE(g,h,i); NB( g, h,k, i, j){if((h&(o.PC|o.QC))==0){if(i==j)return;}if(IB==null){IB=[] ;AD(pC);}if(g.PB==null){g.PB=[] ;IB.add(g);}g.PB.add(new o(h,k,i,j));} oC(){}var OB;var RC=100;var IB;var JB; pC(){var u=0;while (IB!=null||JB!=null){var i=IB;IB=null;var j=JB;JB=null;if(u++ ==RC){qC(i,j);return;}if(i!=null){for(var g in i){var FB=g.PB;g.PB=null;for(var h=g.QB.head;h!=null;h=h.next){var k=h.value;try {k(FB);}catch (bB,JC){UB(bB,JC,k,'from ${g}');}}}}if(j!=null){j.forEach((cC,KC){KC.WE();});}}} qC( h, i){var g=[] ;if(h!=null){for(var j in h){var FB=j.PB;g.add('${j} ${FB}');}}if(i!=null){for(var k in i.values){var u=k.WE();if(u!=null)g.add('${k} ${u}');}}IB=null;JB=null;var bB='exceeded notifiction limit of ${RC}, possible ' 'circular reference in observer callbacks: ${g.take(10).join(", ")}';tC(bB);}class dB{static var rC=0;final  XE= ++dB.rC;final  YE;final  ZE;final  aE;final  bE=new Map();final  cE=[] ;var dE=false;var eE;dB(this.YE,this.ZE,this.aE); toString()=>aE!=null?'<observer ${XE}: ${aE}>':'<observer ${XE}>'; TE(){var g=OB;OB=this;try {eE=YE();if(eE is Iterable&&eE is !List&&eE is !q){eE=(eE as Iterable).toList();}}catch (h,i){UB(h,i,YE,'from ${this}');eE=null;}bE.forEach(fE);bE.clear();assert(OB==this);OB=g;gE();return cE.length>0;} hE( g){try {ZE(g);}catch (h,i){UB(h,i,ZE,'from ${this}');}} gE(){var g=eE;if(g is !q)return;cE.add(xB(g,(h){hE(new cB(g,g,h));}));} VE( j, k,g){var i=bE.putIfAbsent(j,()=>new Map());try {var h=i[g];if(h==null)h=0;i[g]=h|k;}catch (u,FB){UB(u,FB,g,'hashCode or operator == from ${this}');}} fE( i, j){cE.add(xB(i,(k){if(dE)return;for(var g in k){var h=j[g.key];if(h!=null&&(h&g.type)!=0){dE=true;if(JB==null){JB=new MC.SplayTreeMap();}JB[XE]=this;return;}}}));} UE(){for(var g in cE){g();}dE=false;} WE(){if(!dE)return null;var g=eE;UE();TE();try {if(g==eE)return null;}catch (i,j){UB(i,j,g,'operator == from ${this}');return null;}var h=new cB(g,eE);hE(h);return h;}}typedef  sC( message);var tC=(g)=>print(g);typedef  uC(error,stackTrace,obj, message);var UB=vC; vC(g,h,i, j){print('web_ui.observe: unhandled error calling ${i} ${j}.\n' 'error:\n${g}\n\nstack trace:\n${h}');}class gD{const gD();}class wC{}class xC{}class AB<BB>{var iE;var jE;var kE;var lE;AB.rD( g,this.kE):lE=g{if(kE!=null)kE.mE++ ;} get next=>jE; get value=>lE;set value( g)=>lE=g; nE( g, h){jE=h;iE=g;if(g!=null)g.jE=this;if(h!=null)h.iE=this;return this;} append( g)=>new AB<BB>.rD(g,kE).nE(this,jE); remove(){if(kE==null)return;kE.mE-- ;if(iE!=null){iE.jE=jE;}else{kE.oE=jE;}if(jE!=null){jE.iE=iE;}else{kE.pE=iE;}jE=null;iE=null;kE=null;}}class yB<BB> extends MC.IterableBase<BB>{var oE;var pE; get length=>mE;var mE=0;yB(){} get head=>oE; add( h){var g=new AB<BB>.rD(h,this);if(pE==null)return oE=pE=g;return pE=g.nE(pE,null);} addLast( g)=>add(g); addAll( g)=>g.forEach(add); get iterator=>new hD<BB>(this);}class hD<BB> implements Iterator<BB>{var qE;var kE;var rE;var sE=-1;hD(this.kE){qE=new List<AB>(kE.length);var h=0;var g=kE.head;while (g!=null){qE[h++ ]=g;g=g.next;}} get current=>rE; moveNext(){do{sE++ ;}while(sE<qE.length&&qE[sE].kE!=kE);if(sE<qE.length){rE=qE[sE].value;return true;}else{rE=null;return false;}}}VB(g,h)=>g.hashCode*31+h.hashCode;yC(g,h,i)=>VB(VB(g,h),i);zC(g,h,i,j)=>VB(VB(g,h),VB(i,j)); AD( h()){var g=new pD.ReceivePort();g.receive((i,j){g.close();h();});g.toSendPort().send(null);}var BD=new iD();class iD implements CB.NodeTreeSanitizer{ sanitizeTree( g){}} CD(h, g,[ i]){if(h is CB.Node){g.replaceWith(h);return h;}var j=h is wC;if(i==null){i=h.toString();}if(!j&&g is CB.Text){g.text=i;}else{var k=g;g=!j?new CB.Text(i):new CB.Element.html(i,treeSanitizer:BD);k.replaceWith(g);}return g;} DD(g){if(g is xC)return g.toString();g=g.toString();return FD(g)?g:'#';}const ED=const["http","https","ftp","mailto"]; FD( h){var g=Uri.parse(h).scheme;if(g=='')return true;return ED.contains(g.toLowerCase())||"MAILTO"==g.toUpperCase();}abstract class eB{ aB(){} insert(); remove();}class jD extends eB{final  YC;var tE;final  listener;jD(this.YC,this.listener); insert(){tE=YC.listen(listener);} remove(){tE.cancel();tE=null;}}abstract class SC extends eB{final exp;final  isFinal;final  EC;var GB;SC(this.exp,this.isFinal):EC=zB&&fB!=null?fB():null; insert(){if(isFinal){FC();}else if(GB!=null){throw new StateError('binding already attached');}else{GB=HC();}} remove(){if(!isFinal){GB();GB=null;}} FC(); HC();}class kD extends SC{final  action;kD(g,this.action, h):super(g,h); FC()=>action(new cB(null,exp())); HC()=>AC(exp,action,'generic-binding',EC);}class lD extends SC{final  bC;final  aC;lD( g,this.bC,this.aC, h):super(g,h); uE(g){bC(aC?DD(g):g);} FC()=>uE(exp()); HC()=>AC(exp,(g)=>uE(g.newValue),'dom-property-binding',EC);}class GD extends eB{final  GC;final  children=[] ;final  nodes=[] ;GD(this.GC); listen( g, h){children.add(new jD(g,(i){h(i);ND();}));} RB( h,i){var g=new CB.Text('');children.add(new kD(()=>'${h()}',(j){g=CD(h(),g,j.newValue);},i));return g;} SB(g,h,i,[j=false]){children.add(new lD(g,h,j,i));} VD( g,h,i){children.add(new JD(g,h,i));} add( g)=>nodes.add(g); addAll( g)=>nodes.addAll(g); aB(){for(var g=0,h=children.length;g<h;g++ ){children[g].aB();}} insert(){for(var g=0,h=children.length;g<h;g++ ){children[g].insert();}} remove(){for(var g=children.length-1;g>=0;g-- ){children[g].remove();}children.clear();}}abstract class HD extends GD{final exp;var GB;HD( g,this.exp):super(g); aB(){} insert(){super.aB();if(nodes.length>0){var h=GC.parentNode;var i=GC.nextNode;for(var g=0,j=nodes.length;g<j;g++ ){h.insertBefore(nodes[g],i);}}super.insert();} remove(){super.remove();for(var g=nodes.length-1;g>=0;g-- ){nodes[g].remove();}nodes.clear();}}typedef  ID( template);class JD extends HD{var hB=false;final  XC;JD( g,h,this.XC):super(g,h); insert(){GB=AC(exp,(g){if(!hB&&g.newValue){XC(this);super.insert();hB=true;}else if(hB&&!g.newValue){super.remove();hB=false;}},'conditional-binding');} remove(){super.remove();GB();GB=null;}}var TC=false;var zB=false;var fB=(){try {throw "";}catch (h,g){return g.toString();}};final  WB=new HB('watcher'); KD(g, u,[ j, FB]){if(TC)return mC(g,u);if(u==null)return (){};if(XB==null)XB=new yB<YB>();j=j==null?'<unnamed>':j;var i;var h=t.RD;if(g is WC){i=(g as WC).vE;}else if(g is Function){i=g;try {var k=g();if(k is List){h=t.ZB;}else if(k is Iterable){h=t.ZB;i=()=>g().toList();}else if((k is MC.LinkedHashMap)||(k is MC.SplayTreeMap)){h=t.DC;}else if(k is Map){h=t.CC;}}catch (bB,JC){WB.IC('evaluating ${j} watcher threw error (${bB}, ${JC})');}}else if(g is List){i=()=>g;h=t.ZB;}else if(g is Iterable){i=()=>g.toList();h=t.ZB;}else if((g is MC.LinkedHashMap)||(g is MC.SplayTreeMap)){i=()=>g;h=t.DC;}else if(g is Map){i=()=>g;h=t.CC;}if(zB&&FB==null&&fB!=null){FB=fB();}var KC=LD(h,i,u,j,FB);var cC=XB.add(KC);return cC.remove;} LD( k, g, h, i, j){switch (k){case t.ZB:return new mD(g,h,i,j);case t.DC:return new oD(g,h,i,j);case t.CC:return new nD(g,h,i,j);default:return new YB(g,h,i,j);}} AC(h, i,[ j, k]){var u=KD(h,i,j,k);var g=h;if(g is Function){g=g();}if(g is Iterable&&g is !List){g=g.toList();}i(new cB(null,g));return u;}var XB;class YB{final  debugName;var location;final  wE;static var MD=0;final  vE;final  xE;var yE;YB(this.vE,this.xE,this.debugName,this.location):wE=MD++ {yE=vE();} toString()=>'${debugName} (id: #${wE})'; UD(){var g=zE();if(AF(g)){var h=yE;BF(g);xE(new cB(h,g));return true;}return false;} AF(g)=>yE!=g; BF(g){if(zB){if(location!=null){WB.info('watcher updated: ${this}, defined at:\n${location}');location=null;}else{WB.info('watcher updated: ${this}');}}yE=g;}zE(){try {return vE();}catch (g,h){WB.IC('${this} watcher threw an exception: ${g}, ${h}');}return yE;}}final  UC=10; ND(){if(XB==null)return;var g;var h=0;do{g=false;for(var i in XB){if(i.UD()){g=true;}}}while(g&& ++h<UC);if(h==UC){WB.IC('Possible loop in watchers propagation, stopped dispatch.');}}typedef  VC<OD>();typedef  PD<OD>( value);class WC<OD>{}class mD<OD> extends YB{mD(g, h, i, j):super(g,h,i,j){BF(zE());} AF( g){return BC(yE,g);} BF(g){yE=new List<OD>.from(g);}}class nD<gB,QD> extends YB{nD(g, h, i, j):super(g,h,i,j){BF(zE());} AF( g){var i=yE.keys;if(i.length!=g.keys.length)return true;var j=i.iterator;while (j.moveNext()){var h=j.current;if(!g.containsKey(h))return true;if(yE[h]!=g[h])return true;}return false;} BF(g){yE=new Map<gB,QD>.from(g);}}class oD<gB,QD> extends YB{oD(g, h, i, j):super(g,h,i,j){BF(zE());} AF( g){return BC(g.keys,yE.keys)||BC(g.values,yE.values);} BF(g){yE=new MC.LinkedHashMap.from(g);}} BC( i, j){var h=i.iterator;var g=j.iterator;while (h.moveNext()){if(!g.moveNext())return true;if(h.current!=g.current)return true;}return g.moveNext();}class t{final CF;const t.sD(this.CF);toString()=>'Enum.${CF}';static const ZB=const t.sD('LIST');static const CC=const t.sD('HASH_MAP');static const DC=const t.sD('ORDERED_MAP');static const RD=const t.sD('OTHER');}var SD=CB.document.body;
//# sourceMappingURL=adlibitum.html_bootstrap.dart.map
//@ sourceMappingURL=adlibitum.html_bootstrap.dart.map
