.class final Lcom/apptentive/android/sdk/util/Util$1;
.super Lcom/apptentive/android/sdk/util/threading/DispatchTask;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$duration:I

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/apptentive/android/sdk/util/Util$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/apptentive/android/sdk/util/Util$1;->val$message:Ljava/lang/String;

    iput p3, p0, Lcom/apptentive/android/sdk/util/Util$1;->val$duration:I

    invoke-direct {p0}, Lcom/apptentive/android/sdk/util/threading/DispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/Util$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/apptentive/android/sdk/util/Util$1;->val$message:Ljava/lang/String;

    iget v2, p0, Lcom/apptentive/android/sdk/util/Util$1;->val$duration:I

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/util/Util;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
