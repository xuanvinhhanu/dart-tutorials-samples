import "dart:html" as h;class l{const l();}class m{final  name;const m(this.name);}class n{const n();} main(){h.query("#sample_text_id")..text="Click me!"..onClick.listen(k);} k( o){var i=h.query("#sample_text_id").text;var j=new StringBuffer();for(int g=i.length-1;g>=0;g-- ){j.write(i[g]);}h.query("#sample_text_id").text=j.toString();}
//# sourceMappingURL=clickme.dart.map
//@ sourceMappingURL=clickme.dart.map
