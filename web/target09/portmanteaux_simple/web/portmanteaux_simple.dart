import "dart:html" as j;import "dart:json" as q;class s{static const  t="Chrome";static const  u="Firefox";static const  v="Internet Explorer";static const  AB="Safari";final  n;final  minimumVersion;const s(this.n,[this.minimumVersion]);}class BB{const BB();}class CB{final  name;const CB(this.name);}class DB{const DB();}class EB{const EB();}var h; main(){j.query('#getWords').onClick.listen(k);h=j.query('#wordList');} k( i){var g='portmanteaux_simple.json';j.HttpRequest.getString(g).then(l).catchError(m);}l( o){var i=q.parse(o);for(int g=0;g<i.length;g++ ){h.children.add(new j.LIElement()..text=i[g]);}}m( g){h.children.add(new j.LIElement()..text='Request failed.');}
//# sourceMappingURL=portmanteaux_simple.dart.map
//@ sourceMappingURL=portmanteaux_simple.dart.map
