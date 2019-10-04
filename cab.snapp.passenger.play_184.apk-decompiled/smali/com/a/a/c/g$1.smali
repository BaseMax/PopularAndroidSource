.class final Lcom/a/a/c/g$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/c/g;->crashAsyncTask(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/a/a/c/g;


# direct methods
.method constructor <init>(Lcom/a/a/c/g;J)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/a/a/c/g$1;->b:Lcom/a/a/c/g;

    iput-wide p2, p0, Lcom/a/a/c/g$1;->a:J

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 2

    .line 46
    :try_start_0
    iget-wide v0, p0, Lcom/a/a/c/g$1;->a:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :catch_0
    iget-object v0, p0, Lcom/a/a/c/g$1;->b:Lcom/a/a/c/g;

    const-string v1, "Background thread crash"

    invoke-virtual {v0, v1}, Lcom/a/a/c/g;->throwRuntimeException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/a/a/c/g$1;->a()Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
