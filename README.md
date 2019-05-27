# What
You can use this repo to create a local jenkins cluster for learning or testing.

**Important Notice:**

**NOT push any `secrets.env` to your repo.**
# How to use

## Set up Jenkins cluster
### Step 1. Set your Jenkins username and password
 Set your username and password by editing `env/master/secrets.env`

```
JENKINS_USERNAME=<put_your_username>
JENKINS_PASSWORD=<put_your_password>
```

### Step 2. Run script `auto/cluster-up`
You can start up your cluster by 

```
./auto/cluster-up
```

### Step 3. Set slave secrets

Open `http://localhost:8081` and login.

Then open `http://localhost:8081/computer/agent-slave/`

You can get the slave secrets.

At last, edit `env/worker/secrets.env`

```
JENKINS_SECRET=<put_your_secret>
```

### Step 3. Restart your cluster

```
./auto/cluster-down
./auto/cluster-up
```

## Use exist cluster

Use `./auto/cluster-down` to start the cluster.
Use `./auto/cluster-down` to close the cluster.

## Clean cluster

Use `./auto/clean-resource` to clean the cluster.


