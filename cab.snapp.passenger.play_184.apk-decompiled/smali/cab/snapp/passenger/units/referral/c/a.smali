.class public final Lcab/snapp/passenger/units/referral/c/a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/passenger/units/referral/c/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Landroid/content/pm/ResolveInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/pm/PackageManager;

.field private b:Ljava/lang/String;

.field private c:Lcab/snapp/passenger/units/referral/c/a$a;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Ljava/lang/String;Lcab/snapp/passenger/units/referral/c/a$a;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 44
    iput-object p1, p0, Lcab/snapp/passenger/units/referral/c/a;->a:Landroid/content/pm/PackageManager;

    .line 45
    iput-object p2, p0, Lcab/snapp/passenger/units/referral/c/a;->b:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcab/snapp/passenger/units/referral/c/a;->c:Lcab/snapp/passenger/units/referral/c/a$a;

    return-void
.end method

.method private varargs a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 66
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "text/plain"

    .line 67
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.TEXT"

    .line 68
    iget-object v3, p0, Lcab/snapp/passenger/units/referral/c/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    iget-object v2, p0, Lcab/snapp/passenger/units/referral/c/a;->a:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 73
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    invoke-static {v1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-direct {p0}, Lcab/snapp/passenger/units/referral/c/a;->a()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 15
    check-cast p1, Ljava/util/List;

    .line 1083
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1084
    iget-object v0, p0, Lcab/snapp/passenger/units/referral/c/a;->c:Lcab/snapp/passenger/units/referral/c/a$a;

    if-eqz v0, :cond_0

    .line 1086
    invoke-interface {v0, p1}, Lcab/snapp/passenger/units/referral/c/a$a;->onTaskFinished(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected final onPreExecute()V
    .locals 1

    .line 54
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 55
    iget-object v0, p0, Lcab/snapp/passenger/units/referral/c/a;->c:Lcab/snapp/passenger/units/referral/c/a$a;

    if-eqz v0, :cond_0

    .line 57
    invoke-interface {v0}, Lcab/snapp/passenger/units/referral/c/a$a;->onTaskStarted()V

    :cond_0
    return-void
.end method
