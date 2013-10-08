import "dart:html" as DB;import "dart:collection" as sB;import "dart:async" as HC;import "dart:isolate" as vD;class dD{static const  eD="Chrome";final  WD;final  minimumVersion;const dD(this.WD,[this.minimumVersion]);}class fD{const fD();}class gD{final  name;const gD(this.name);}class hD{const hD();}class iD{const iD();}final  OB=pC({'The Cat in the Hat':true,'War and Peace':false,'Pride and Prejudice':true,'On the Road':true,'The Hunger Games':true,'The Java Tutorial':false,'The Joy of Cooking':false,'Goodnight Moon':true}); bC(){DB.window.onLoad.listen((i){var g=(DB.query('#bookselector') as DB.SelectElement).options;print(g.length);g.forEach((h)=>h.selected=OB[h.value]);});} get cC{return OB.keys.where((g)=>OB[g]).toList();} dC( g){var h=(DB.query('#bookselector') as DB.SelectElement).selectedOptions;OB.forEach((i,j)=>OB[i]=false);h.forEach((g)=>OB[g.value]=true);} eC(){var CE=VD;final DE=new DB.Element.html('<h4>You chose:</h4>',treeSanitizer:XB),EE=new DB.Element.html('<select multiple="" id="bookselector">\n            <option style="display:none"></option>\n        </select>',treeSanitizer:XB),FE=new DB.Element.html('<option template="" repeat="key in books.keys"></option>',treeSanitizer:XB),GE=new DB.Element.html('<ul>\n           <li style="display:none"></li>\n        </ul>',treeSanitizer:XB),HE=new DB.Element.html('<li template="" repeat="selected in booksselected"></li>',treeSanitizer:XB);var IE;var JE=new NC(CE);IE=CE.nodes[3].nodes[3];JE.YD(IE,()=>!OB.isEmpty,(JE){var KE,LE,ME,NE;LE=EE.clone(true);KE=LE.nodes[1];JE.loop(KE,()=>OB.keys,(g,h,JE){var i=g[h];var OE;OE=FE.clone(true);var PE=JE.UC(()=>i,false);OE.nodes.add(PE);JE.bD(()=>i,(j){if(OE.value!=j)OE.value=j;},false,false);JE.add(OE);});JE.listen(LE.onChange,(l){dC(l);});NE=GE.clone(true);ME=NE.nodes[1];JE.loop(ME,()=>cC,(g,h,JE){var AB=g[h];var QE;QE=HE.clone(true);var RE=JE.UC(()=>AB,false);QE.nodes.add(RE);JE.add(QE);});JE.addAll([new DB.Text('\n        \n        '),new DB.Text('\n        '),LE,new DB.Text('\n\n        '),DE.clone(true),new DB.Text('\n        '),NE,new DB.Text('\n      ')]);});JE.iB();JE.insert();}main(){PC=false;bC();eC();}var IC=false;var fC=o.JC;class QB{final  name; get WC=>(parent==null||parent.name=='')?name:'${parent.WC}.${name}';final  parent;var SE;var children;var TE;var UE;factory QB( g){if(g.startsWith('.')){throw new ArgumentError("name shouldn't start with a '.'");}if(aB==null)aB=<String,QB>{};if(aB.containsKey(g))return aB[g];var h=g.lastIndexOf('.');var i=null;var j;if(h==-1){if(g!='')i=new QB('');j=g;}else{i=new QB(g.substring(0,h));j=g.substring(h+1);}final l=new QB.wD(j,i);aB[g]=l;return l;}QB.wD(this.name,this.parent):children=new Map<String,QB>(){if(parent!=null)parent.children[name]=this;} get rB{if(IC){if(SE!=null)return SE;if(parent!=null)return parent.rB;}return fC;} ZD( g)=>(g>=rB); log( h, j,[l]){if(ZD(h)){var i=new tB(h,j,WC,l);if(IC){var g=this;while (g!=null){g.VE(i);g=g.parent;}}else{gC.VE(i);}}} info( g,[h])=>log(o.JC,g,h); EC( g,[h])=>log(o.hC,g,h); VE( g){if(TE!=null){TE.add(g);}}static  get gC=>new QB('');static var aB;}class o implements Comparable<o>{final  name;final  value;const o(this.name,this.value);static const  JC=const o('INFO',800);static const  hC=const o('WARNING',900); operator==( g)=>g!=null&&value==g.value; operator<( g)=>value<g.value; operator<=( g)=>value<=g.value; operator>( g)=>value>g.value; operator>=( g)=>value>=g.value; compareTo( g)=>value-g.value; get hashCode=>value; toString()=>name;}class tB{final  rB;final  message;final  aD;final  time;final  cD;static var iC=0;var exception;tB(this.rB,this.message,this.aD,[this.exception]):time=new DateTime.now(),cD=tB.iC++ ;}class jC<PB> extends FD with u implements List<PB>{final  WE;jC([ g]):WE=g!=null?new List<PB>(g):<PB>[] ;factory jC.xD( g)=>new jC<PB>()..addAll(g); get length{if(q)EB(this,k.t,'length');return WE.length;}set length( h){var i=WE.length;if(i==h)return;if(MB(this)){if(h<i){for(int g=i-1;g>=h;g-- ){m(this,k.SB,g,WE[g],null);}m(this,k.t,'length',i,h);}else{m(this,k.t,'length',i,h);for(int g=i;g<h;g++ ){m(this,k.RB,g,null,null);}}}WE.length=h;} operator[]( g){if(q)EB(this,k.HB,g);return WE[g];}operator[]=( g, h){var i=WE[g];if(MB(this)){m(this,k.HB,g,i,h);}WE[g]=h;} sublist( g,[ h])=>new jC<PB>.xD(super.sublist(g,h)); add( h){var g=WE.length;if(MB(this)){m(this,k.t,'length',g,g+1);m(this,k.RB,g,null,h);}WE.add(h);} expand( g(E)){throw new UnimplementedError();return null;} toString(){if(q){for(int g=0;g<length;g++ ){EB(this,k.HB,g);}}return WE.toString();}}typedef  bB<BB,v>();class VB<BB,v> extends u implements Map<BB,v>{final  XE;var YE;var ZE;VB({ createMap}):XE=createMap!=null?createMap():new Map<BB,v>(){YE=new kC<BB,v>(this);ZE=new lC<BB,v>(this);}factory VB.yD( h,{ createMap}){var g=new VB(createMap:createMap);h.forEach((i,j){g[i]=j;});return g;} get keys=>YE; get values=>ZE; get length{if(q)EB(this,k.t,'length');return XE.length;} get isEmpty=>length==0; get isNotEmpty=>length!=0; aE( g)=>EB(this,k.HB,g); bE(){EB(this,k.t,'length');XE.keys.forEach(aE);} containsKey( g){if(q)aE(g);return XE.containsKey(g);} operator[]( g){if(q)aE(g);return XE[g];} operator[]=( g, h){var j=XE.length;var i=XE[g];XE[g]=h;if(MB(this)){if(j!=XE.length){m(this,k.t,'length',j,XE.length);m(this,k.RB,g,i,h);}else if(i!=h){m(this,k.HB,g,i,h);}}} putIfAbsent( g, j()){if(q)aE(g);var h=XE.length;var i=XE.putIfAbsent(g,j);if(MB(this)&&h!=XE.length){m(this,k.t,'length',h,XE.length);m(this,k.RB,g,null,i);}return i;} remove( g){if(q)aE(g);var h=XE.length;var i=XE.remove(g);if(MB(this)&&h!=XE.length){m(this,k.SB,g,i,null);m(this,k.t,'length',h,XE.length);}return i;} addAll( g)=>g.forEach((h,i){this[h]=i;}); clear(){var g=XE.length;if(MB(this)&&g>0){XE.forEach((h,i){m(this,k.SB,h,i,null);});m(this,k.t,'length',g,0);}XE.clear();} forEach( g( key, value)){if(q)bE();XE.forEach(g);} toString()=>sB.Maps.mapToString(this);}class kC<BB,v> extends sB.IterableBase<BB>{final  XE;kC(this.XE); get iterator=>new jD<BB,v>(XE);}class jD<BB,v> implements Iterator<BB>{final  XE;final  YE;var cE=false;jD( g):XE=g,YE=g.XE.keys.iterator; moveNext(){if(q)EB(XE,k.t,'length');return cE=YE.moveNext();} get current{var g=YE.current;if(q&&cE)XE.aE(g);return g;}}class lC<BB,v> extends sB.IterableBase<v>{final  XE;lC(this.XE); get iterator=>new kD<BB,v>(XE);}class kD<BB,v> implements Iterator<v>{final  XE;final  YE;final  ZE;var cE;kD( g):XE=g,YE=g.XE.keys.iterator,ZE=g.XE.values.iterator; moveNext(){if(q)EB(XE,k.t,'length');var h=YE.moveNext();var g=ZE.moveNext();if(h!=g){throw new StateError('keys and values should be the same length');}return cE=g;} get current{if(q&&cE)XE.aE(YE.current);return ZE.current;}}typedef  KB( e);typedef  mC( changes);typedef  LB();typedef  nC();class kB{final oldValue;final newValue;final  changes;kB(this.oldValue,this.newValue,[this.changes]); operator==(g){return g is kB&&oldValue==g.oldValue&&newValue==g.newValue&&changes==g.changes;} get hashCode=>BD(oldValue,newValue,changes); toString(){if(changes!=null)return '#<ChangeNotification to ${newValue}: ${changes}>';return '#<ChangeNotification from ${oldValue} to ${newValue}>';}}class k{static const t=1;static const HB=2;static const RB=HB|4;static const SB=HB|8;final  type;final key;final oldValue;final newValue;k(this.type,this.key,this.oldValue,this.newValue); operator==(g){return g is k&&type==g.type&&key==g.key&&oldValue==g.oldValue&&newValue==g.newValue;} get hashCode=>CD(type,key,oldValue,newValue); toString(){var g;switch (type){case t:g='field';break;case HB:g='index';break;case RB:g='insert';break;case SB:g='remove';break;}return '#<ChangeRecord ${g} ${key} from ${oldValue} to ${newValue}>';}} oC(g, i,[ l]){if(g is u){var h=g;return uB(h,(AB){i(new kB(h,h,AB));});}var j=new lB(g,i,l);if(!j.dE()){return rC;}return j.eE;} uB( g, h){if(g.ZB==null)g.ZB=new vB();var i=g.ZB.add(h);return i.remove;}pC(g){if(g is Map){var h=null;if(g is sB.SplayTreeMap){h=()=>new sB.SplayTreeMap();}else if(g is sB.LinkedHashMap){h=()=>new sB.LinkedHashMap();}return new VB.yD(g,createMap:h);}if(g is Set)return new LC.zD(g);if(g is Iterable)return new jC.xD(g);return g;}class u{var ZB;var YB;final  hashCode= ++u.qC;static var qC=0;} MB( g)=>g.ZB!=null&&g.ZB.head!=null; get q=>WB!=null; EB( g, h,i)=>WB.fE(g,h,i); m( g, h,l, i, j){if((h&(k.RB|k.SB))==0){if(i==j)return;}if(TB==null){TB=[] ;DD(sC);}if(g.YB==null){g.YB=[] ;TB.add(g);}g.YB.add(new k(h,l,i,j));} rC(){}var WB;var KC=100;var TB;var UB; sC(){var AB=0;while (TB!=null||UB!=null){var i=TB;TB=null;var j=UB;UB=null;if(AB++ ==KC){tC(i,j);return;}if(i!=null){for(var g in i){var NB=g.YB;g.YB=null;for(var h=g.ZB.head;h!=null;h=h.next){var l=h.value;try {l(NB);}catch (jB,FC){cB(jB,FC,l,'from ${g}');}}}}if(j!=null){j.forEach((aC,GC){GC.gE();});}}} tC( h, i){var g=[] ;if(h!=null){for(var j in h){var NB=j.YB;g.add('${j} ${NB}');}}if(i!=null){for(var l in i.values){var AB=l.gE();if(AB!=null)g.add('${l} ${AB}');}}TB=null;UB=null;var jB='exceeded notifiction limit of ${KC}, possible ' 'circular reference in observer callbacks: ${g.take(10).join(", ")}';wC(jB);}class lB{static var uC=0;final  hE= ++lB.uC;final  iE;final  jE;final  kE;final  lE=new Map();final  mE=[] ;var nE=false;var oE;lB(this.iE,this.jE,this.kE); toString()=>kE!=null?'<observer ${hE}: ${kE}>':'<observer ${hE}>'; dE(){var g=WB;WB=this;try {oE=iE();if(oE is Iterable&&oE is !List&&oE is !u){oE=(oE as Iterable).toList();}}catch (h,i){cB(h,i,iE,'from ${this}');oE=null;}lE.forEach(pE);lE.clear();assert(WB==this);WB=g;qE();return mE.length>0;} rE( g){try {jE(g);}catch (h,i){cB(h,i,jE,'from ${this}');}} qE(){var g=oE;if(g is !u)return;mE.add(uB(g,(h){rE(new kB(g,g,h));}));} fE( j, l,g){var i=lE.putIfAbsent(j,()=>new Map());try {var h=i[g];if(h==null)h=0;i[g]=h|l;}catch (AB,NB){cB(AB,NB,g,'hashCode or operator == from ${this}');}} pE( i, j){mE.add(uB(i,(l){if(nE)return;for(var g in l){var h=j[g.key];if(h!=null&&(h&g.type)!=0){nE=true;if(UB==null){UB=new sB.SplayTreeMap();}UB[hE]=this;return;}}}));} eE(){for(var g in mE){g();}nE=false;} gE(){if(!nE)return null;var g=oE;eE();dE();try {if(g==oE)return null;}catch (i,j){cB(i,j,g,'operator == from ${this}');return null;}var h=new kB(g,oE);rE(h);return h;}}typedef  vC( message);var wC=(g)=>print(g);typedef  xC(error,stackTrace,obj, message);var cB=yC; yC(g,h,i, j){print('web_ui.observe: unhandled error calling ${i} ${j}.\n' 'error:\n${g}\n\nstack trace:\n${h}');}class LC<IB> extends ED with u implements Set<IB>{final  sE;final  tE;LC({ createMap}):sE=createMap!=null?createMap():new Map<IB,Object>(),tE=createMap;factory LC.zD( g,{ createMap}){return new LC<IB>(createMap:createMap)..addAll(g);} contains( g){if(q)EB(this,k.HB,g);return sE.containsKey(g);} add( g){var h=sE.length;sE[g]=const Object();if(h!=sE.length){m(this,k.t,'length',h,sE.length);m(this,k.RB,g,null,g);}} remove( g){if(q)EB(this,k.HB,g);var h=sE.length;sE.remove(g);if(h!=sE.length){if(MB(this)){m(this,k.SB,g,g,null);m(this,k.t,'length',h,sE.length);}return true;}return false;} clear(){if(MB(this)){for(var g in sE.keys){m(this,k.SB,g,g,null);}m(this,k.t,'length',sE.length,0);}sE.clear();} get length{if(q)EB(this,k.t,'length');return sE.length;} get isEmpty=>length==0; get iterator=>new lD<IB>(this); addAll( g)=>g.forEach(add); toString(){if(q){for(IB g in sE.keys){EB(this,k.HB,g);}}return sE.keys.toSet().toString();}}class lD<IB> implements Iterator<IB>{final  uE;final  vE;var wE=false;lD( g):uE=g,vE=g.sE.keys.iterator; moveNext(){uE.length;return wE=vE.moveNext();} get current{var g=vE.current;if(q&&wE)EB(uE,k.HB,g);return g;}}class zC{}class AD{}class FB<GB>{var xE;var yE;var zE;var AF;FB.AE( g,this.zE):AF=g{if(zE!=null)zE.BF++ ;} get next=>yE; get value=>AF;set value( g)=>AF=g; CF( g, h){yE=h;xE=g;if(g!=null)g.yE=this;if(h!=null)h.xE=this;return this;} append( g)=>new FB<GB>.AE(g,zE).CF(this,yE); remove(){if(zE==null)return;zE.BF-- ;if(xE!=null){xE.yE=yE;}else{zE.DF=yE;}if(yE!=null){yE.xE=xE;}else{zE.EF=xE;}yE=null;xE=null;zE=null;}}class vB<GB> extends sB.IterableBase<GB>{var DF;var EF; get length=>BF;var BF=0;vB(){} get head=>DF; add( h){var g=new FB<GB>.AE(h,this);if(EF==null)return DF=EF=g;return EF=g.CF(EF,null);} addLast( g)=>add(g); addAll( g)=>g.forEach(add); get iterator=>new mD<GB>(this);}class mD<GB> implements Iterator<GB>{var FF;var zE;var GF;var HF=-1;mD(this.zE){FF=new List<FB>(zE.length);var h=0;var g=zE.head;while (g!=null){FF[h++ ]=g;g=g.next;}} get current=>GF; moveNext(){do{HF++ ;}while(HF<FF.length&&FF[HF].zE!=zE);if(HF<FF.length){GF=FF[HF].value;return true;}else{GF=null;return false;}}}dB(g,h)=>g.hashCode*31+h.hashCode;BD(g,h,i)=>dB(dB(g,h),i);CD(g,h,i,j)=>dB(dB(g,h),dB(i,j)); DD( h()){var g=new vD.ReceivePort();g.receive((i,j){g.close();h();});g.toSendPort().send(null);}abstract class ED extends sB.IterableBase<dynamic>{}abstract class FD extends sB.ListMixin<dynamic>{}var XB=new nD();class nD implements DB.NodeTreeSanitizer{ sanitizeTree( g){}} GD(h, g,[ i]){if(h is DB.Node){g.replaceWith(h);return h;}var j=h is zC;if(i==null){i=h.toString();}if(!j&&g is DB.Text){g.text=i;}else{var l=g;g=!j?new DB.Text(i):new DB.Element.html(i,treeSanitizer:XB);l.replaceWith(g);}return g;} HD(g){if(g is AD)return g.toString();g=g.toString();return JD(g)?g:'#';}const ID=const["http","https","ftp","mailto"]; JD( h){var g=Uri.parse(h).scheme;if(g=='')return true;return ID.contains(g.toLowerCase())||"MAILTO"==g.toUpperCase();}abstract class mB{ iB(){} insert(); remove();}class oD extends mB{final  VC;var IF;final  listener;oD(this.VC,this.listener); insert(){IF=VC.listen(listener);} remove(){IF.cancel();IF=null;}}abstract class MC extends mB{final exp;final  isFinal;final  AC;var JB;MC(this.exp,this.isFinal):AC=wB&&nB!=null?nB():null; insert(){if(isFinal){BC();}else if(JB!=null){throw new StateError('binding already attached');}else{JB=DC();}} remove(){if(!isFinal){JB();JB=null;}} BC(); DC();}class pD extends MC{final  action;pD(g,this.action, h):super(g,h); BC()=>action(new kB(null,exp())); DC()=>oB(exp,action,'generic-binding',AC);}class qD extends MC{final  ZC;final  XC;qD( g,this.ZC,this.XC, h):super(g,h); JF(g){ZC(XC?HD(g):g);} BC()=>JF(exp()); DC()=>oB(exp,(g)=>JF(g.newValue),'dom-property-binding',AC);}class NC extends mB{final  CC;final  children=[] ;final  nodes=[] ;NC(this.CC); listen( g, h){children.add(new oD(g,(i){h(i);QD();}));} UC( h,i){var g=new DB.Text('');children.add(new pD(()=>'${h()}',(j){g=GD(h(),g,j.newValue);},i));return g;} bD(g,h,i,[j=false]){children.add(new qD(g,h,j,i));} YD( g,h,i){children.add(new LD(g,h,i));} loop( g,h,i){children.add(new rD(g,h,i));} add( g)=>nodes.add(g); addAll( g)=>nodes.addAll(g); iB(){for(var g=0,h=children.length;g<h;g++ ){children[g].iB();}} insert(){for(var g=0,h=children.length;g<h;g++ ){children[g].insert();}} remove(){for(var g=children.length-1;g>=0;g-- ){children[g].remove();}children.clear();}}abstract class OC extends NC{final exp;var JB;OC( g,this.exp):super(g); iB(){} insert(){super.iB();if(nodes.length>0){var h=CC.parentNode;var i=CC.nextNode;for(var g=0,j=nodes.length;g<j;g++ ){h.insertBefore(nodes[g],i);}}super.insert();} remove(){super.remove();for(var g=nodes.length-1;g>=0;g-- ){nodes[g].remove();}nodes.clear();}}typedef  KD( template);class LD extends OC{var qB=false;final  TC;LD( g,h,this.TC):super(g,h); insert(){JB=oB(exp,(g){if(!qB&&g.newValue){TC(this);super.insert();qB=true;}else if(qB&&!g.newValue){super.remove();qB=false;}},'conditional-binding');} remove(){super.remove();JB();JB=null;}}typedef  MD( list, index, template);class rD extends OC{final  YC;rD( g,h,this.YC):super(g,h); insert(){JB=oB(exp,(i){super.remove();var h=i.newValue;for(int g=0;g<h.length;g++ ){YC(h,g,this);}super.insert();},'loop-binding');} remove(){super.remove();JB();JB=null;}}var PC=false;var wB=false;var nB=(){try {throw "";}catch (h,g){return g.toString();}};final  eB=new QB('watcher'); ND(g, AB,[ j, NB]){if(PC)return oC(g,AB);if(AB==null)return (){};if(fB==null)fB=new vB<gB>();j=j==null?'<unnamed>':j;var i;var h=CB.UD;if(g is SC){i=(g as SC).KF;}else if(g is Function){i=g;try {var l=g();if(l is List){h=CB.hB;}else if(l is Iterable){h=CB.hB;i=()=>g().toList();}else if((l is sB.LinkedHashMap)||(l is sB.SplayTreeMap)){h=CB.zB;}else if(l is Map){h=CB.yB;}}catch (jB,FC){eB.EC('evaluating ${j} watcher threw error (${jB}, ${FC})');}}else if(g is List){i=()=>g;h=CB.hB;}else if(g is Iterable){i=()=>g.toList();h=CB.hB;}else if((g is sB.LinkedHashMap)||(g is sB.SplayTreeMap)){i=()=>g;h=CB.zB;}else if(g is Map){i=()=>g;h=CB.yB;}if(wB&&NB==null&&nB!=null){NB=nB();}var GC=OD(h,i,AB,j,NB);var aC=fB.add(GC);return aC.remove;} OD( l, g, h, i, j){switch (l){case CB.hB:return new sD(g,h,i,j);case CB.zB:return new uD(g,h,i,j);case CB.yB:return new tD(g,h,i,j);default:return new gB(g,h,i,j);}} oB(h, i,[ j, l]){var AB=ND(h,i,j,l);var g=h;if(g is Function){g=g();}if(g is Iterable&&g is !List){g=g.toList();}i(new kB(null,g));return AB;}var fB;class gB{final  debugName;var location;final  LF;static var PD=0;final  KF;final  MF;var NF;gB(this.KF,this.MF,this.debugName,this.location):LF=PD++ {NF=KF();} toString()=>'${debugName} (id: #${LF})'; XD(){var g=OF();if(PF(g)){var h=NF;QF(g);MF(new kB(h,g));return true;}return false;} PF(g)=>NF!=g; QF(g){if(wB){if(location!=null){eB.info('watcher updated: ${this}, defined at:\n${location}');location=null;}else{eB.info('watcher updated: ${this}');}}NF=g;}OF(){try {return KF();}catch (g,h){eB.EC('${this} watcher threw an exception: ${g}, ${h}');}return NF;}}final  QC=10; QD(){if(fB==null)return;var g;var h=0;do{g=false;for(var i in fB){if(i.XD()){g=true;}}}while(g&& ++h<QC);if(h==QC){eB.EC('Possible loop in watchers propagation, stopped dispatch.');}}typedef  RC<RD>();typedef  SD<RD>( value);class SC<RD>{}class sD<RD> extends gB{sD(g, h, i, j):super(g,h,i,j){QF(OF());} PF( g){return xB(NF,g);} QF(g){NF=new List<RD>.from(g);}}class tD<pB,TD> extends gB{tD(g, h, i, j):super(g,h,i,j){QF(OF());} PF( g){var i=NF.keys;if(i.length!=g.keys.length)return true;var j=i.iterator;while (j.moveNext()){var h=j.current;if(!g.containsKey(h))return true;if(NF[h]!=g[h])return true;}return false;} QF(g){NF=new Map<pB,TD>.from(g);}}class uD<pB,TD> extends gB{uD(g, h, i, j):super(g,h,i,j){QF(OF());} PF( g){return xB(g.keys,NF.keys)||xB(g.values,NF.values);} QF(g){NF=new sB.LinkedHashMap.from(g);}} xB( i, j){var h=i.iterator;var g=j.iterator;while (h.moveNext()){if(!g.moveNext())return true;if(h.current!=g.current)return true;}return g.moveNext();}class CB{final RF;const CB.BE(this.RF);toString()=>'Enum.${RF}';static const hB=const CB.BE('LIST');static const yB=const CB.BE('HASH_MAP');static const zB=const CB.BE('ORDERED_MAP');static const UD=const CB.BE('OTHER');}var VD=DB.document.body;
//# sourceMappingURL=multiselect.html_bootstrap.dart.map
//@ sourceMappingURL=multiselect.html_bootstrap.dart.map
