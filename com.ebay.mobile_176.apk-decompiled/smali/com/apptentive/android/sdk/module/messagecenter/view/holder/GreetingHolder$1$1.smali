.class Lcom/apptentive/android/sdk/module/messagecenter/view/holder/GreetingHolder$1$1;
.super Ljava/lang/Object;
.source "GreetingHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/module/messagecenter/view/holder/GreetingHolder$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apptentive/android/sdk/module/messagecenter/view/holder/GreetingHolder$1;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/module/messagecenter/view/holder/GreetingHolder$1;Landroid/view/View;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/GreetingHolder$1$1;->this$1:Lcom/apptentive/android/sdk/module/messagecenter/view/holder/GreetingHolder$1;

    iput-object p2, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/GreetingHolder$1$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/holder/GreetingHolder$1$1;->val$view:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method
