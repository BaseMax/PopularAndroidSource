.class public Lf/a/a/g/d/a/n;
.super Lf/a/a/g/d/a/t;
.source "ReportSpamAction.java"


# instance fields
.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "comments/report"

    .line 1
    invoke-direct {p0, v0}, Lf/a/a/g/d/a/t;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lf/a/a/g/d/a/n;->b:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lf/a/a/g/d/a/n;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/g/d/a/n;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Lf/a/a/e/g;Landroid/view/View;)V
    .locals 1

    .line 2
    new-instance p2, Lf/a/a/e/o;

    new-instance v0, Lf/a/a/g/d/a/m;

    invoke-direct {v0, p0, p1}, Lf/a/a/g/d/a/m;-><init>(Lf/a/a/g/d/a/n;Lf/a/a/e/g;)V

    invoke-direct {p2, p1, v0}, Lf/a/a/e/o;-><init>(Lf/a/a/e/g;Lf/a/a/e/o$a;)V

    .line 3
    invoke-virtual {p2}, Lf/a/a/g/c;->f()V

    return-void
.end method
