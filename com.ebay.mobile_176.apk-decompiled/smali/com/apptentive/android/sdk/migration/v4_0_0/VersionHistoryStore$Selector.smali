.class public final enum Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;
.super Ljava/lang/Enum;
.source "VersionHistoryStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Selector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;

.field public static final enum other:Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;

.field public static final enum total:Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;

.field public static final enum version_code:Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;

.field public static final enum version_name:Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 183
    new-instance v0, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;

    const-string/jumbo v1, "total"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;->total:Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;

    .line 184
    new-instance v0, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;

    const-string/jumbo v1, "version_code"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;->version_code:Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;

    .line 185
    new-instance v0, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;

    const-string/jumbo v1, "version_name"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;->version_name:Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;

    .line 186
    new-instance v0, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;

    const-string/jumbo v1, "other"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;->other:Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;

    const/4 v0, 0x4

    .line 182
    new-array v0, v0, [Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;

    sget-object v1, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;->total:Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;

    aput-object v1, v0, v2

    sget-object v1, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;->version_code:Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;

    aput-object v1, v0, v3

    sget-object v1, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;->version_name:Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;

    aput-object v1, v0, v4

    sget-object v1, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;->other:Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;

    aput-object v1, v0, v5

    sput-object v0, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;->$VALUES:[Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 182
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;
    .locals 0

    .line 190
    :try_start_0
    invoke-static {p0}, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;->valueOf(Ljava/lang/String;)Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 194
    :catch_0
    sget-object p0, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;->other:Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;
    .locals 1

    .line 182
    const-class v0, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;

    return-object p0
.end method

.method public static values()[Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;
    .locals 1

    .line 182
    sget-object v0, Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;->$VALUES:[Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;

    invoke-virtual {v0}, [Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector;

    return-object v0
.end method
