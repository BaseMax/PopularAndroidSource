.class synthetic Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$1;
.super Ljava/lang/Object;
.source "VersionHistoryStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$apptentive$android$sdk$migration$v4_0_0$VersionHistoryStore$Selector:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 112
    invoke-static {}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;->values()[Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$1;->$SwitchMap$com$apptentive$android$sdk$migration$v4_0_0$VersionHistoryStore$Selector:[I

    :try_start_0
    sget-object v0, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$1;->$SwitchMap$com$apptentive$android$sdk$migration$v4_0_0$VersionHistoryStore$Selector:[I

    sget-object v1, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;->total:Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$1;->$SwitchMap$com$apptentive$android$sdk$migration$v4_0_0$VersionHistoryStore$Selector:[I

    sget-object v1, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;->version_code:Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$1;->$SwitchMap$com$apptentive$android$sdk$migration$v4_0_0$VersionHistoryStore$Selector:[I

    sget-object v1, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;->version_name:Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
