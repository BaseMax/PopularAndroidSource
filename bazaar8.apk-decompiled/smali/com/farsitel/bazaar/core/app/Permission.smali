.class public final enum Lcom/farsitel/bazaar/core/app/Permission;
.super Ljava/lang/Enum;
.source "PermissionManager.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/core/app/Permission;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACCESS_COARSE_LOCATION:Lcom/farsitel/bazaar/core/app/Permission;

.field public static final enum WRITE_EXTERNAL_STORAGE:Lcom/farsitel/bazaar/core/app/Permission;

.field public static final synthetic a:[Lcom/farsitel/bazaar/core/app/Permission;


# instance fields
.field public final description:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/farsitel/bazaar/core/app/Permission;

    new-instance v1, Lcom/farsitel/bazaar/core/app/Permission;

    const-string v2, "WRITE_EXTERNAL_STORAGE"

    const/4 v3, 0x0

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1
    invoke-direct {v1, v2, v3, v4, v2}, Lcom/farsitel/bazaar/core/app/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/core/app/Permission;->WRITE_EXTERNAL_STORAGE:Lcom/farsitel/bazaar/core/app/Permission;

    aput-object v1, v0, v3

    new-instance v1, Lcom/farsitel/bazaar/core/app/Permission;

    const-string v2, "ACCESS_COARSE_LOCATION"

    const/4 v3, 0x1

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    .line 2
    invoke-direct {v1, v2, v3, v4, v2}, Lcom/farsitel/bazaar/core/app/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/core/app/Permission;->ACCESS_COARSE_LOCATION:Lcom/farsitel/bazaar/core/app/Permission;

    aput-object v1, v0, v3

    sput-object v0, Lcom/farsitel/bazaar/core/app/Permission;->a:[Lcom/farsitel/bazaar/core/app/Permission;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/farsitel/bazaar/core/app/Permission;->value:Ljava/lang/String;

    iput-object p4, p0, Lcom/farsitel/bazaar/core/app/Permission;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/core/app/Permission;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/core/app/Permission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/core/app/Permission;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/core/app/Permission;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/core/app/Permission;->a:[Lcom/farsitel/bazaar/core/app/Permission;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/core/app/Permission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/core/app/Permission;

    return-object v0
.end method


# virtual methods
.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/core/app/Permission;->value:Ljava/lang/String;

    return-object v0
.end method
