.class public Lc/b/a/g/b/a;
.super Ljava/lang/Object;
.source "NoTransition.java"

# interfaces
.implements Lc/b/a/g/b/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/g/b/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/g/b/b<",
        "TR;>;"
    }
.end annotation


# static fields
.field public static final a:Lc/b/a/g/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/g/b/a<",
            "*>;"
        }
    .end annotation
.end field

.field public static final b:Lc/b/a/g/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/g/b/c<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/g/b/a;

    invoke-direct {v0}, Lc/b/a/g/b/a;-><init>()V

    sput-object v0, Lc/b/a/g/b/a;->a:Lc/b/a/g/b/a;

    .line 2
    new-instance v0, Lc/b/a/g/b/a$a;

    invoke-direct {v0}, Lc/b/a/g/b/a$a;-><init>()V

    sput-object v0, Lc/b/a/g/b/a;->b:Lc/b/a/g/b/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lc/b/a/g/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lc/b/a/g/b/c<",
            "TR;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lc/b/a/g/b/a;->b:Lc/b/a/g/b/c;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lc/b/a/g/b/b$a;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
