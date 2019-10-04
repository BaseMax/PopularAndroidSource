.class final Lcom/apptentive/android/sdk/ApptentiveInternal$1;
.super Lcom/apptentive/android/sdk/util/threading/DispatchTask;
.source "ApptentiveInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/ApptentiveInternal;->createInstance(Landroid/app/Application;Lcom/apptentive/android/sdk/ApptentiveConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 238
    invoke-direct {p0}, Lcom/apptentive/android/sdk/util/threading/DispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 1

    .line 241
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->access$100()Lcom/apptentive/android/sdk/ApptentiveInternal;

    move-result-object v0

    invoke-static {v0}, Lcom/apptentive/android/sdk/ApptentiveInternal;->access$200(Lcom/apptentive/android/sdk/ApptentiveInternal;)Z

    return-void
.end method
