.class public final Lc/c/a/p/p;
.super Ljava/lang/Object;
.source "PeriodicStartWorker_AssistedFactory_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/p/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lc/c/a/p/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/p/p;

    invoke-direct {v0}, Lc/c/a/p/p;-><init>()V

    sput-object v0, Lc/c/a/p/p;->a:Lc/c/a/p/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lc/c/a/p/p;
    .locals 1

    .line 1
    sget-object v0, Lc/c/a/p/p;->a:Lc/c/a/p/p;

    return-object v0
.end method

.method public static b()Lc/c/a/p/o;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/p/o;

    invoke-direct {v0}, Lc/c/a/p/o;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lc/c/a/p/o;
    .locals 1

    .line 2
    invoke-static {}, Lc/c/a/p/p;->b()Lc/c/a/p/o;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/p/p;->get()Lc/c/a/p/o;

    move-result-object v0

    return-object v0
.end method
