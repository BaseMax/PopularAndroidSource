.class public abstract Lcom/apptentive/android/sdk/module/messagecenter/view/MessageView;
.super Landroid/widget/LinearLayout;
.source "MessageView.java"

# interfaces
.implements Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterListItemView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/apptentive/android/sdk/model/ApptentiveMessage;",
        ">",
        "Landroid/widget/LinearLayout;",
        "Lcom/apptentive/android/sdk/module/messagecenter/view/MessageCenterListItemView;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/apptentive/android/sdk/model/ApptentiveMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/apptentive/android/sdk/module/messagecenter/view/MessageView;->init(Landroid/content/Context;Lcom/apptentive/android/sdk/model/ApptentiveMessage;)V

    return-void
.end method


# virtual methods
.method protected init(Landroid/content/Context;Lcom/apptentive/android/sdk/model/ApptentiveMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    return-void
.end method
