.class public final Lc/c/a/p/B;
.super Ljava/lang/Object;
.source "StopScheduleUpdateWorker_AssistedFactory_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/p/A;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lc/c/a/p/B;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/p/B;

    invoke-direct {v0}, Lc/c/a/p/B;-><init>()V

    sput-object v0, Lc/c/a/p/B;->a:Lc/c/a/p/B;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lc/c/a/p/B;
    .locals 1

    .line 1
    sget-object v0, Lc/c/a/p/B;->a:Lc/c/a/p/B;

    return-object v0
.end method

.method public static b()Lc/c/a/p/A;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/p/A;

    invoke-direct {v0}, Lc/c/a/p/A;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lc/c/a/p/A;
    .locals 1

    .line 2
    invoke-static {}, Lc/c/a/p/B;->b()Lc/c/a/p/A;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/p/B;->get()Lc/c/a/p/A;

    move-result-object v0

    return-object v0
.end method
