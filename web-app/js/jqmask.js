/**
 * Created by RickSantiago on 23/10/2016.
 */
/* Number mask: $(this).mask("##/##/####")
 http://gogs.com.br */
$.fn.extend({
    mask: function(string) {
        var input = this;

        $(input).keydown(function(e) {
            key = e.keyCode;

            var value = "";
            if (((key >= 48 && key <= 57) || (key >= 96 && key <= 105)) && $(input).val().length < string.length) {
                var i = $(input).val().length;
                var text = string.substring(i);
                if (text.substring(0,1) != string.substring(0,1)) {
                    value += text.substring(0,1);
                }
                $(input).val($(input).val() + value);
            } else if (key != 9 && key != 13 && key != 8 && key != 37 && key != 39 && key != 46 && key != 116) {
                return false;
            };
        });
    }
});
