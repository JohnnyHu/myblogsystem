/**
 * @author: zyh
 * @see: <a href="mailto:jikeytang@gmail.com">zyh</a>
 * @time: 2013-6-20 下午10:53
 * @info:
 */
Modernizr.load([
    {
        load: [PUBLIC + '/home/js/libs/jquery-1.8.3.min.js', PUBLIC + '/home/js/common.js', PUBLIC + '/home/js/libs/jquery.lazyload.js'],
        complete: function(){
        }
    },
    {
        load: [PUBLIC + '/home/js/design.js'],
        complete: function(){

        }
    }
]);

