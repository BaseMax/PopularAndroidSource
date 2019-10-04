.class final Lcom/apptentive/android/sdk/module/engagement/EngagementModule$2;
.super Lcom/apptentive/android/sdk/util/threading/DispatchTask;
.source "EngagementModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/module/engagement/EngagementModule;->launchMessageCenterErrorActivity(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/EngagementModule$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/apptentive/android/sdk/util/threading/DispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/EngagementModule$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/EngagementModule;->launchMessageCenterErrorActivity(Landroid/content/Context;)V

    return-void
.end method
