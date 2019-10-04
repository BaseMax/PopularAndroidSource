.class public final Lcom/google/android/gms/measurement/internal/zzm;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/measurement/internal/zzm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:J

.field public final f:J

.field public final g:Ljava/lang/String;

.field public final h:Z

.field public final i:Z

.field public final j:J

.field public final k:Ljava/lang/String;

.field public final l:J

.field public final m:J

.field public final n:I

.field public final o:Z

.field public final p:Z

.field public final q:Z

.field public final r:Ljava/lang/String;

.field public final s:Ljava/lang/Boolean;

.field public final t:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/e/a/b/h/b/kc;

    invoke-direct {v0}, Lc/e/a/b/h/b/kc;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;Ljava/lang/Boolean;J)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    invoke-static {p1}, Lc/e/a/b/d/d/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->b:Ljava/lang/String;

    move-object v1, p3

    .line 5
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->c:Ljava/lang/String;

    move-wide v1, p4

    .line 6
    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->j:J

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->d:Ljava/lang/String;

    move-wide v1, p7

    .line 8
    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->e:J

    move-wide v1, p9

    .line 9
    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->f:J

    move-object v1, p11

    .line 10
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->g:Ljava/lang/String;

    move v1, p12

    .line 11
    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->h:Z

    move/from16 v1, p13

    .line 12
    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->i:Z

    move-object/from16 v1, p14

    .line 13
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->k:Ljava/lang/String;

    move-wide/from16 v1, p15

    .line 14
    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->l:J

    move-wide/from16 v1, p17

    .line 15
    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->m:J

    move/from16 v1, p19

    .line 16
    iput v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->n:I

    move/from16 v1, p20

    .line 17
    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->o:Z

    move/from16 v1, p21

    .line 18
    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->p:Z

    move/from16 v1, p22

    .line 19
    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->q:Z

    move-object/from16 v1, p23

    .line 20
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->r:Ljava/lang/String;

    move-object/from16 v1, p24

    .line 21
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->s:Ljava/lang/Boolean;

    move-wide/from16 v1, p25

    .line 22
    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->t:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZJLjava/lang/String;JJIZZZLjava/lang/String;Ljava/lang/Boolean;J)V
    .locals 3

    move-object v0, p0

    .line 23
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    move-object v1, p1

    .line 24
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    move-object v1, p2

    .line 25
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->b:Ljava/lang/String;

    move-object v1, p3

    .line 26
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->c:Ljava/lang/String;

    move-wide v1, p12

    .line 27
    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->j:J

    move-object v1, p4

    .line 28
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->d:Ljava/lang/String;

    move-wide v1, p5

    .line 29
    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->e:J

    move-wide v1, p7

    .line 30
    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->f:J

    move-object v1, p9

    .line 31
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->g:Ljava/lang/String;

    move v1, p10

    .line 32
    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->h:Z

    move v1, p11

    .line 33
    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->i:Z

    move-object/from16 v1, p14

    .line 34
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->k:Ljava/lang/String;

    move-wide/from16 v1, p15

    .line 35
    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->l:J

    move-wide/from16 v1, p17

    .line 36
    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->m:J

    move/from16 v1, p19

    .line 37
    iput v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->n:I

    move/from16 v1, p20

    .line 38
    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->o:Z

    move/from16 v1, p21

    .line 39
    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->p:Z

    move/from16 v1, p22

    .line 40
    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->q:Z

    move-object/from16 v1, p23

    .line 41
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->r:Ljava/lang/String;

    move-object/from16 v1, p24

    .line 42
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->s:Ljava/lang/Boolean;

    move-wide/from16 v1, p25

    .line 43
    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->t:J

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lc/e/a/b/d/d/a/a;->a(Landroid/os/Parcel;)I

    move-result p2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lc/e/a/b/d/d/a/a;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzm;->b:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {p1, v2, v0, v1}, Lc/e/a/b/d/d/a/a;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzm;->c:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {p1, v2, v0, v1}, Lc/e/a/b/d/d/a/a;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzm;->d:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {p1, v2, v0, v1}, Lc/e/a/b/d/d/a/a;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 6
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzm;->e:J

    const/4 v0, 0x6

    invoke-static {p1, v0, v2, v3}, Lc/e/a/b/d/d/a/a;->a(Landroid/os/Parcel;IJ)V

    .line 7
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzm;->f:J

    const/4 v0, 0x7

    invoke-static {p1, v0, v2, v3}, Lc/e/a/b/d/d/a/a;->a(Landroid/os/Parcel;IJ)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzm;->g:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-static {p1, v2, v0, v1}, Lc/e/a/b/d/d/a/a;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 9
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzm;->h:Z

    const/16 v2, 0x9

    invoke-static {p1, v2, v0}, Lc/e/a/b/d/d/a/a;->a(Landroid/os/Parcel;IZ)V

    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzm;->i:Z

    const/16 v2, 0xa

    invoke-static {p1, v2, v0}, Lc/e/a/b/d/d/a/a;->a(Landroid/os/Parcel;IZ)V

    .line 11
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzm;->j:J

    const/16 v0, 0xb

    invoke-static {p1, v0, v2, v3}, Lc/e/a/b/d/d/a/a;->a(Landroid/os/Parcel;IJ)V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzm;->k:Ljava/lang/String;

    const/16 v2, 0xc

    invoke-static {p1, v2, v0, v1}, Lc/e/a/b/d/d/a/a;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 13
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzm;->l:J

    const/16 v0, 0xd

    invoke-static {p1, v0, v2, v3}, Lc/e/a/b/d/d/a/a;->a(Landroid/os/Parcel;IJ)V

    .line 14
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzm;->m:J

    const/16 v0, 0xe

    invoke-static {p1, v0, v2, v3}, Lc/e/a/b/d/d/a/a;->a(Landroid/os/Parcel;IJ)V

    .line 15
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzm;->n:I

    const/16 v2, 0xf

    invoke-static {p1, v2, v0}, Lc/e/a/b/d/d/a/a;->a(Landroid/os/Parcel;II)V

    .line 16
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzm;->o:Z

    const/16 v2, 0x10

    invoke-static {p1, v2, v0}, Lc/e/a/b/d/d/a/a;->a(Landroid/os/Parcel;IZ)V

    .line 17
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzm;->p:Z

    const/16 v2, 0x11

    invoke-static {p1, v2, v0}, Lc/e/a/b/d/d/a/a;->a(Landroid/os/Parcel;IZ)V

    .line 18
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzm;->q:Z

    const/16 v2, 0x12

    invoke-static {p1, v2, v0}, Lc/e/a/b/d/d/a/a;->a(Landroid/os/Parcel;IZ)V

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzm;->r:Ljava/lang/String;

    const/16 v2, 0x13

    invoke-static {p1, v2, v0, v1}, Lc/e/a/b/d/d/a/a;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzm;->s:Ljava/lang/Boolean;

    const/16 v2, 0x15

    invoke-static {p1, v2, v0, v1}, Lc/e/a/b/d/d/a/a;->a(Landroid/os/Parcel;ILjava/lang/Boolean;Z)V

    .line 21
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzm;->t:J

    const/16 v2, 0x16

    invoke-static {p1, v2, v0, v1}, Lc/e/a/b/d/d/a/a;->a(Landroid/os/Parcel;IJ)V

    .line 22
    invoke-static {p1, p2}, Lc/e/a/b/d/d/a/a;->a(Landroid/os/Parcel;I)V

    return-void
.end method
