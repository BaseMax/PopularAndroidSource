.class public Lcom/webengage/sdk/android/WebEngageJobService;
.super Landroid/app/job/JobService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/webengage/sdk/android/actions/database/r;->c(Z)V

    invoke-static {}, Lcom/webengage/sdk/android/WebEngage;->get()Lcom/webengage/sdk/android/AbstractWebEngage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/AbstractWebEngage;->f(Landroid/content/BroadcastReceiver;)V

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/r;->f()Z

    move-result p1

    return p1
.end method
