## TAX BUILDING SURVEY

- each building to survey will be a task/job - under control of a workflow process.
- task - job same thing. "job" easier to write.
- there is 1-1 relation between task and the WF process (also called wf-case, or wf-ticket)
- workflow specification is done with YAML file.
- *workflow spec* not same as *wf-case* : "workflow-in-action"

### STATES
- **open** : task exists in the system assigned to a team, waiting for surveyor to operate
- **assigned** : a surveyor took the job (task) - noew we know who is in charge
- **visited** : surveyor did visit the building, date is recorded
- **completed** : surveyor commit a form with data, and declare "job done"
- **verified** : data processing department ACK the data.
- **closed** : project manager publish data.

 ### ACTIONS: inline process

- 1 project manager create a job and assign to a team. => state: "open"
- 2 someone in the team (a surveyor) takes the job: assign itself to the job => state: "assigned"
- 3 surveyor visit the building and fill the form => state: "visited"
- 4 surveyor review form accuracy and commit the form => state: "completed"
- 5 data processing department (DPM) verify commited data => state: "verified"
- 6 project manager publish the data collected and verified => state: "closed"

### out-of-line Actions
- reassign job to another surveyor
- monitor sleeping surveyor
- cancel job
- edit, comment on a job

### ROLES:
- project manager
- surveyor, team of surveyors
- data processor

###  project setup

- create form to collect building data.
- have a form to assign/reassign team or surveyor
- create teams of surveyors
- customize each action (1-6) to operate with database.

