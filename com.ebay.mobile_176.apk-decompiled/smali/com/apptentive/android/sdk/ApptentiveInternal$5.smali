.class synthetic Lcom/apptentive/android/sdk/ApptentiveInternal$5;
.super Ljava/lang/Object;
.source "ApptentiveInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptentive/android/sdk/ApptentiveInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$apptentive$android$sdk$ApptentiveInternal$PushAction:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 801
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;->values()[Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/apptentive/android/sdk/ApptentiveInternal$5;->$SwitchMap$com$apptentive$android$sdk$ApptentiveInternal$PushAction:[I

    :try_start_0
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveInternal$5;->$SwitchMap$com$apptentive$android$sdk$ApptentiveInternal$PushAction:[I

    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;->pmc:Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/ApptentiveInternal$PushAction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
