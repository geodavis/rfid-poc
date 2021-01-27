const cds = require("@sap/cds");
const { TagReads } = cds.entities("biofiredx.sc.rfid");

module.exports = (srv) => {
/*    srv.on("READ", "TagReads", (req, res) => {
         const { SELECT } = cds.ql(req);
        const result = SELECT.from(TagReads);
        console.log(result);
        return result; 
    });*/

/*     srv.on("CREATE", "InsertTagReads", async (req, res) => {
        let returnData = await cds
          .transaction(req)
          .run(
            INSERT.into(TagReads).entries({
              reader: req.data.reader,
              antenna: req.data.antenna,
              tagID: req.data.tagID,
              rssi: req.data.rssi,
              timeRead: req.data.timeRead
            })
          )
          .then((resolve, reject) => {
            console.log("resolve:", resolve);
            console.log("reject:", reject);
    
            if (typeof resolve !== "undefined") {
              return req.data;
            } else {
              req.error(409, "Record Not Found");
            }
          })
          .catch(err => {
            console.log(err);
            req.error(500, "Error in Updating Record");
          });
        console.log("Before End", returnData);
        return returnData;
      }); */

/*      srv.on("CREATE", "InsertMultipleTags", async (req) => {
         req._.req.logger.info('on getUserInfo');
        const userId = req.user.id;
        const { ID } = await SELECT.one(People).columns('ID').where({ employeeId: userId }); 
        return "Test";
      });
*/
};