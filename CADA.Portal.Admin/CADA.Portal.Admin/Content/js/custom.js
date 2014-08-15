$(document).ready(function () {
    // Masked input  
    if ($("[class^='mask_']").length > 0) {
        $("input.mask_tin").mask('99-9999999', { completed: function () {
            //action
        }
        });
        $("input.mask_ssn").mask('999-99-9999', { completed: function () {
            //action
        }
        });
        $("input.mask_date").mask('9999-99-99', { completed: function () {
            //action
        }
        });
        $("input.mask_product").mask('a*-999-a999', { completed: function () {
            //action
        }
        });
        $("input.mask_phone").mask('99 (999) 999-99-99', { completed: function () {
            //action
        }
        });
        $("input.mask_phone_ext").mask('99 (999) 999-9999? x99999', { completed: function () {
            //action
        }
        });
        $("input.mask_credit").mask('9999-9999-9999-9999', { completed: function () {
            //action
        }
        });
        $("input.mask_percent").mask('99%', { completed: function () {
            //action
        }
        });
    }

    // accordion
    if ($(".accordion").length > 0) $(".accordion").accordion({ heightStyle: "content" });
    // eof accordion

    // Datepicker
    $(".datepicker").datepicker({ dateFormat: 'yy-mm-dd' });

    if ($("#datepicker").length > 0) {

        $("#datepicker").datepicker({ dateFormat: 'yy-mm-dd',
            onSelect: function (date) {
                //action
            }
        });
    }

    if ($(".fb").length > 0) {
        $("a.fb").fancybox({ padding: 10,
            'transitionIn': 'elastic',
            'transitionOut': 'elastic',
            'speedIn': 600,
            'speedOut': 200
        });
    }

});