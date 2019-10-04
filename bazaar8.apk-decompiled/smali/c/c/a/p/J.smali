.class public final Lc/c/a/p/J;
.super Ljava/lang/Object;
.source "WorkManagerScheduler_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/p/I;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lc/c/a/p/J;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/p/J;

    invoke-direct {v0}, Lc/c/a/p/J;-><init>()V

    sput-object v0, Lc/c/a/p/J;->a:Lc/c/a/p/J;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lc/c/a/p/J;
    .locals 1

    .line 1
    sget-object v0, Lc/c/a/p/J;->a:Lc/c/a/p/J;

    return-object v0
.end method

.method public static b()Lc/c/a/p/I;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/p/I;

    invoke-direct {v0}, Lc/c/a/p/I;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lc/c/a/p/I;
    .locals 1

    .line 2
    invoke-static {}, Lc/c/a/p/J;->b()Lc/c/a/p/I;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/p/J;->get()Lc/c/a/p/I;

    move-result-object v0

    return-object v0
.end method
