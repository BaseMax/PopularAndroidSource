.class public Lb/i/a/n$a;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/i/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/os/Bundle;

.field public final b:[Lb/i/a/r;

.field public final c:[Lb/i/a/r;

.field public d:Z

.field public e:Z

.field public final f:I

.field public g:I

.field public h:Ljava/lang/CharSequence;

.field public i:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 10

    .line 1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v9}, Lb/i/a/n$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Lb/i/a/r;[Lb/i/a/r;ZIZ)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Lb/i/a/r;[Lb/i/a/r;ZIZ)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lb/i/a/n$a;->e:Z

    .line 4
    iput p1, p0, Lb/i/a/n$a;->g:I

    .line 5
    invoke-static {p2}, Lb/i/a/n$d;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lb/i/a/n$a;->h:Ljava/lang/CharSequence;

    .line 6
    iput-object p3, p0, Lb/i/a/n$a;->i:Landroid/app/PendingIntent;

    if-eqz p4, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object p4, p0, Lb/i/a/n$a;->a:Landroid/os/Bundle;

    .line 8
    iput-object p5, p0, Lb/i/a/n$a;->b:[Lb/i/a/r;

    .line 9
    iput-object p6, p0, Lb/i/a/n$a;->c:[Lb/i/a/r;

    .line 10
    iput-boolean p7, p0, Lb/i/a/n$a;->d:Z

    .line 11
    iput p8, p0, Lb/i/a/n$a;->f:I

    .line 12
    iput-boolean p9, p0, Lb/i/a/n$a;->e:Z

    return-void
.end method


# virtual methods
.method public a()Landroid/app/PendingIntent;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/i/a/n$a;->i:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/i/a/n$a;->d:Z

    return v0
.end method

.method public c()[Lb/i/a/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/i/a/n$a;->c:[Lb/i/a/r;

    return-object v0
.end method

.method public d()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/i/a/n$a;->a:Landroid/os/Bundle;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lb/i/a/n$a;->g:I

    return v0
.end method

.method public f()[Lb/i/a/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/i/a/n$a;->b:[Lb/i/a/r;

    return-object v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lb/i/a/n$a;->f:I

    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/i/a/n$a;->e:Z

    return v0
.end method

.method public i()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/i/a/n$a;->h:Ljava/lang/CharSequence;

    return-object v0
.end method
