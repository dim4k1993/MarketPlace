  $(document).ready(function() {
    $('#contact_form').bootstrapValidator({
        feedbackIcons: {
          valid: 'glyphicon glyphicon-ok',
          invalid: 'glyphicon glyphicon-remove',
          validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
          name: {
            validators: {
              stringLength: {
                min: 2,
              },
              notEmpty: {
                message: 'Please supply your first name'
              }
            }
          },
          lastName: {
            validators: {
              stringLength: {
                min: 2,
              },
              notEmpty: {
                message: 'Please supply your last name'
              }
            }
          },
          parol: {
            validators: {
              notEmpty: {
                message: 'Please supply your email address'
              },
              emailAddress: {
                message: 'Please supply a valid email address'
              }
            }
          },
          telephon_namber: {
            validators: {
              notEmpty: {
                message: 'Please supply your phone number'
              },
              telephon_namber: {
                country: 'US',
                message: 'Please supply a vaild phone number with area code'
              }
            }
          },
        }
      })
      .on('success.form.bv', function(e) {
        $('#success_message').slideDown({
            opacity: "show"
          }, "slow") // Do something ...
        $('#contact_form').data('bootstrapValidator').resetForm();

        // Prevent form submission
        e.preventDefault();

        // Get the form instance
        var $form = $(e.target);

        // Get the BootstrapValidator instance
        var bv = $form.data('bootstrapValidator');

        // Use Ajax to submit form data
        $.post($form.attr('action'), $form.serialize(), function(result) {
          console.log(result);
        }, 'json');
      });
  });