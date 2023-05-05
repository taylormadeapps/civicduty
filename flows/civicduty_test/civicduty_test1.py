import os,json
#print(f"module path is {os.sys.path}")



from prefect import flow, task, get_run_logger
from prefect_civi import CiviAuth

payload={
    "select": "[*]",
    "limit":25

}


@flow
def civi_flow():
    logger = get_run_logger()
    logger.info("Hello from Civicduty!")
    civiauth_block=CiviAuth.load("civitest")
    civiclient=civiauth_block.get_client()
    
    spayload=json.dumps(payload)
    logger.info("Payload: "+spayload)
    civiclient.call_api("Activity","get",spayload)

if __name__=="__main__":
    civi_flow()