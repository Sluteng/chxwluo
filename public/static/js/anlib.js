(function() {
				var bttn = document.getElementById( 'notification-triggerb' );

				// make sure..
				bttn.disabled = false;
				
				bttn.addEventListener( 'click', function() {
					// simulate loading (for demo purposes only)
					classie.add( bttn, 'active' );
					setTimeout( function() {

						classie.remove( bttn, 'active' );
						
						// create the notification
						var notification = new NotificationFx({
							message : '<p><img class="img" src="images/gp.png"></p>',
							layout : 'growl',
							effect : 'scale',
							type : 'notice', // notice, warning, error or success
							onClose : function() {
								bttn.disabled = false;
							}
						});

						// show the notification
						notification.show();

					}, 1000 );
					
					// disable the button (for demo purposes only)
					this.disabled = true;
				} );
			})();