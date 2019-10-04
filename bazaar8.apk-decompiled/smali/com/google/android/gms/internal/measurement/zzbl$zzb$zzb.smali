.class public final enum Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;
.super Ljava/lang/Enum;

# interfaces
.implements Lc/e/a/b/g/f/rb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;",
        ">;",
        "Lc/e/a/b/g/f/rb;"
    }
.end annotation


# static fields
.field public static final a:Lc/e/a/b/g/f/sb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/g/f/sb<",
            "Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic b:[Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

.field public static final enum zzue:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

.field public static final enum zzuf:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

.field public static final enum zzug:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

.field public static final enum zzuh:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

.field public static final enum zzui:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

.field public static final enum zzuj:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

.field public static final enum zzuk:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_MATCH_TYPE"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;->zzue:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    const/4 v2, 0x1

    const-string v3, "REGEXP"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;->zzuf:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    const/4 v3, 0x2

    const-string v4, "BEGINS_WITH"

    invoke-direct {v0, v4, v3, v3}, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;->zzug:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    const/4 v4, 0x3

    const-string v5, "ENDS_WITH"

    invoke-direct {v0, v5, v4, v4}, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;->zzuh:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    const/4 v5, 0x4

    const-string v6, "PARTIAL"

    invoke-direct {v0, v6, v5, v5}, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;->zzui:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    const/4 v6, 0x5

    const-string v7, "EXACT"

    invoke-direct {v0, v7, v6, v6}, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;->zzuj:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    const/4 v7, 0x6

    const-string v8, "IN_LIST"

    invoke-direct {v0, v8, v7, v7}, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;->zzuk:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    const/4 v0, 0x7

    .line 8
    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    sget-object v8, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;->zzue:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    aput-object v8, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;->zzuf:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;->zzug:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;->zzuh:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;->zzui:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;->zzuj:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;->zzuk:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;->b:[Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    .line 9
    new-instance v0, Lc/e/a/b/g/f/E;

    invoke-direct {v0}, Lc/e/a/b/g/f/E;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;->a:Lc/e/a/b/g/f/sb;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;->value:I

    return-void
.end method

.method public static a(I)Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;->zzuk:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    return-object p0

    .line 3
    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;->zzuj:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    return-object p0

    .line 4
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;->zzui:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    return-object p0

    .line 5
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;->zzuh:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    return-object p0

    .line 6
    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;->zzug:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    return-object p0

    .line 7
    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;->zzuf:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    return-object p0

    .line 8
    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;->zzue:Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;->b:[Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzbl$zzb$zzb;->value:I

    return v0
.end method
