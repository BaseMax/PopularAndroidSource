.class public final Lcom/farsitel/bazaar/data/device/DeviceInfoDataSource$width$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DeviceInfoDataSource.kt"

# interfaces
.implements Lh/f/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/b/c;-><init>(Landroid/content/Context;Lc/c/a/e/d/u/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/farsitel/bazaar/data/device/DeviceInfoDataSource$width$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/farsitel/bazaar/data/device/DeviceInfoDataSource$width$2;

    invoke-direct {v0}, Lcom/farsitel/bazaar/data/device/DeviceInfoDataSource$width$2;-><init>()V

    sput-object v0, Lcom/farsitel/bazaar/data/device/DeviceInfoDataSource$width$2;->a:Lcom/farsitel/bazaar/data/device/DeviceInfoDataSource$width$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()I
    .locals 1

    .line 2
    invoke-static {}, Lc/c/a/c/h/d;->b()I

    move-result v0

    return v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/device/DeviceInfoDataSource$width$2;->invoke()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
