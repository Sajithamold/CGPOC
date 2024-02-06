sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'myfioricclistreport/test/integration/FirstJourney',
		'myfioricclistreport/test/integration/pages/CCenterList',
		'myfioricclistreport/test/integration/pages/CCenterObjectPage'
    ],
    function(JourneyRunner, opaJourney, CCenterList, CCenterObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('myfioricclistreport') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCCenterList: CCenterList,
					onTheCCenterObjectPage: CCenterObjectPage
                }
            },
            opaJourney.run
        );
    }
);