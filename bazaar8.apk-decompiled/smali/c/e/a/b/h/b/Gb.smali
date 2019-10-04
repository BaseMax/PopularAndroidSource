.class public final synthetic Lc/e/a/b/h/b/Gb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lc/e/a/b/h/b/Eb;

.field public final b:Lc/e/a/b/h/b/t;

.field public final c:Landroid/app/job/JobParameters;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/Eb;Lc/e/a/b/h/b/t;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/e/a/b/h/b/Gb;->a:Lc/e/a/b/h/b/Eb;

    iput-object p2, p0, Lc/e/a/b/h/b/Gb;->b:Lc/e/a/b/h/b/t;

    iput-object p3, p0, Lc/e/a/b/h/b/Gb;->c:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lc/e/a/b/h/b/Gb;->a:Lc/e/a/b/h/b/Eb;

    iget-object v1, p0, Lc/e/a/b/h/b/Gb;->b:Lc/e/a/b/h/b/t;

    iget-object v2, p0, Lc/e/a/b/h/b/Gb;->c:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1, v2}, Lc/e/a/b/h/b/Eb;->a(Lc/e/a/b/h/b/t;Landroid/app/job/JobParameters;)V

    return-void
.end method
