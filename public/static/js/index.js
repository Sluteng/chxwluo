// 遇到空格换行<br/>
 	      $(function() {
 	          var x = ($('#service>li').length);
 	          console.log(x);
 	          for (var i = 0; i < x; i++) {
 	              var str = ($('.serIntro').eq(i).children('.a1'));
 	              str.html(str.html().replace(/\s/g, "<br/>"));
 	          }
 	          // var str = $(".a1");
 	          // str.html(str.html().replace(/\s/g, "<br/>"));
 	      })
         $('.a1').replaceWith(string);