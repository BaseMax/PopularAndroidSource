.class public final Lc/c/a/d/g/a/b;
.super Ljava/lang/Object;
.source "ForegroundDetector_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/d/g/a/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lc/c/a/d/g/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/d/g/a/b;

    invoke-direct {v0}, Lc/c/a/d/g/a/b;-><init>()V

    sput-object v0, Lc/c/a/d/g/a/b;->a:Lc/c/a/d/g/a/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lc/c/a/d/g/a/b;
    .locals 1

    .line 1
    sget-object v0, Lc/c/a/d/g/a/b;->a:Lc/c/a/d/g/a/b;

    return-object v0
.end method

.method public static b()Lc/c/a/d/g/a/a;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/d/g/a/a;

    invoke-direct {v0}, Lc/c/a/d/g/a/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lc/c/a/d/g/a/a;
    .locals 1

    .line 2
    invoke-static {}, Lc/c/a/d/g/a/b;->b()Lc/c/a/d/g/a/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/d/g/a/b;->get()Lc/c/a/d/g/a/a;

    move-result-object v0

    return-object v0
.end method
