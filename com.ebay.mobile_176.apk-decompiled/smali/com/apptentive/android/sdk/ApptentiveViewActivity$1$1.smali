.class Lcom/apptentive/android/sdk/ApptentiveViewActivity$1$1;
.super Lcom/apptentive/android/sdk/util/threading/DispatchTask;
.source "ApptentiveViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/ApptentiveViewActivity$1;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apptentive/android/sdk/ApptentiveViewActivity$1;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/ApptentiveViewActivity$1;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/apptentive/android/sdk/ApptentiveViewActivity$1$1;->this$1:Lcom/apptentive/android/sdk/ApptentiveViewActivity$1;

    invoke-direct {p0}, Lcom/apptentive/android/sdk/util/threading/DispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/apptentive/android/sdk/ApptentiveViewActivity$1$1;->this$1:Lcom/apptentive/android/sdk/ApptentiveViewActivity$1;

    iget-object v0, v0, Lcom/apptentive/android/sdk/ApptentiveViewActivity$1;->this$0:Lcom/apptentive/android/sdk/ApptentiveViewActivity;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/ApptentiveViewActivity;->finish()V

    return-void
.end method
