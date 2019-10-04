.class public Lf/a/a/e/b/q$a;
.super Ljava/lang/Object;
.source "FooterInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/a/e/b/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lf/a/a/g/d/a/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lf/a/a/g/d/a/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/a/a/e/b/q$a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lf/a/a/e/b/q$a;->b:Lf/a/a/g/d/a/b;

    return-void
.end method

.method public static synthetic a(Lf/a/a/e/b/q$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/e/b/q$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lf/a/a/e/b/q$a;)Lf/a/a/g/d/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/e/b/q$a;->b:Lf/a/a/g/d/a/b;

    return-object p0
.end method
