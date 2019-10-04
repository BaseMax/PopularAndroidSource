.class public final Ld/b/d;
.super Ljava/lang/Object;
.source "InstanceFactory.java"

# interfaces
.implements Ld/b/c;
.implements Ld/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "TT;>;",
        "Ld/a<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final a:Ld/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/b/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ld/b/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ld/b/d;-><init>(Ljava/lang/Object;)V

    sput-object v0, Ld/b/d;->a:Ld/b/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld/b/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ld/b/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ld/b/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ld/b/d;

    const-string v1, "instance cannot be null"

    invoke-static {p0, v1}, Ld/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {v0, p0}, Ld/b/d;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld/b/d;->b:Ljava/lang/Object;

    return-object v0
.end method
