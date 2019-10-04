.class public Lc/b/a/c/c/C$a;
.super Ljava/lang/Object;
.source "UnitModelLoader.java"

# interfaces
.implements Lc/b/a/c/c/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/c/c/C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/c/c/v<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field public static final a:Lc/b/a/c/c/C$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/c/C$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/c/c/C$a;

    invoke-direct {v0}, Lc/b/a/c/c/C$a;-><init>()V

    sput-object v0, Lc/b/a/c/c/C$a;->a:Lc/b/a/c/c/C$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lc/b/a/c/c/C$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lc/b/a/c/c/C$a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lc/b/a/c/c/C$a;->a:Lc/b/a/c/c/C$a;

    return-object v0
.end method


# virtual methods
.method public a(Lc/b/a/c/c/y;)Lc/b/a/c/c/u;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/c/y;",
            ")",
            "Lc/b/a/c/c/u<",
            "TModel;TModel;>;"
        }
    .end annotation

    .line 2
    invoke-static {}, Lc/b/a/c/c/C;->a()Lc/b/a/c/c/C;

    move-result-object p1

    return-object p1
.end method
