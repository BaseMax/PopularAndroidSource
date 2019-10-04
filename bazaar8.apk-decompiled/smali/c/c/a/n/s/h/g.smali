.class public final Lc/c/a/n/s/h/g;
.super Ljava/lang/Object;
.source "PaymentWebViewModel_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/n/s/h/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lc/c/a/n/s/h/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/s/h/g;

    invoke-direct {v0}, Lc/c/a/n/s/h/g;-><init>()V

    sput-object v0, Lc/c/a/n/s/h/g;->a:Lc/c/a/n/s/h/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lc/c/a/n/s/h/g;
    .locals 1

    .line 1
    sget-object v0, Lc/c/a/n/s/h/g;->a:Lc/c/a/n/s/h/g;

    return-object v0
.end method

.method public static b()Lc/c/a/n/s/h/f;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/s/h/f;

    invoke-direct {v0}, Lc/c/a/n/s/h/f;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lc/c/a/n/s/h/f;
    .locals 1

    .line 2
    invoke-static {}, Lc/c/a/n/s/h/g;->b()Lc/c/a/n/s/h/f;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/s/h/g;->get()Lc/c/a/n/s/h/f;

    move-result-object v0

    return-object v0
.end method
