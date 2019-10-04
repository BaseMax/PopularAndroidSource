.class final Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$LoadTask;
.super Landroid/os/AsyncTask;
.source "ShortFormEulaDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;


# direct methods
.method private constructor <init>(Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$LoadTask;->this$0:Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$1;)V
    .locals 0

    .line 198
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$LoadTask;-><init>(Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 198
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$LoadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 0

    .line 205
    :try_start_0
    iget-object p1, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$LoadTask;->this$0:Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;

    invoke-virtual {p1}, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;->load()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 198
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$LoadTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 217
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$LoadTask;->this$0:Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;

    invoke-virtual {v0, p0, p1}, Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager;->handleLoadDataResult(Lcom/ebay/common/net/api/eulasf/ShortFormEulaDataManager$LoadTask;Ljava/lang/String;)V

    return-void
.end method
