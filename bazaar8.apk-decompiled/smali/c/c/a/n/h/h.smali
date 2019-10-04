.class public final Lc/c/a/n/h/h;
.super Ljava/lang/Object;
.source "ChildCategoryViewModel_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/n/h/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lc/c/a/n/h/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/h/h;

    invoke-direct {v0}, Lc/c/a/n/h/h;-><init>()V

    sput-object v0, Lc/c/a/n/h/h;->a:Lc/c/a/n/h/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lc/c/a/n/h/h;
    .locals 1

    .line 1
    sget-object v0, Lc/c/a/n/h/h;->a:Lc/c/a/n/h/h;

    return-object v0
.end method

.method public static b()Lc/c/a/n/h/g;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/h/g;

    invoke-direct {v0}, Lc/c/a/n/h/g;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lc/c/a/n/h/g;
    .locals 1

    .line 2
    invoke-static {}, Lc/c/a/n/h/h;->b()Lc/c/a/n/h/g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/h/h;->get()Lc/c/a/n/h/g;

    move-result-object v0

    return-object v0
.end method
