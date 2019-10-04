package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.a.e;
import b.l.a.f;
import c.c.a.j.a.a;
import c.c.a.n.c.d.m;
import c.c.a.n.u.b;
import c.c.a.n.u.c;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.reviews.ReplyReviewItem;
import com.farsitel.bazaar.common.model.reviews.ReviewItem;
import com.farsitel.bazaar.common.model.reviews.VoteState;

/* renamed from: c.c.a.f.nb  reason: case insensitive filesystem */
/* compiled from: ItemReviewBindingImpl */
public class C0447nb extends C0444mb implements a.C0085a {
    public static final ViewDataBinding.b ga = null;
    public static final SparseIntArray ha = new SparseIntArray();
    public final ConstraintLayout ia;
    public final Group ja;
    public final Group ka;
    public final View.OnClickListener la;
    public final View.OnClickListener ma;
    public final View.OnClickListener na;
    public final View.OnClickListener oa;
    public final View.OnClickListener pa;
    public final View.OnClickListener qa;
    public final View.OnClickListener ra;
    public final View.OnClickListener sa;
    public final View.OnClickListener ta;
    public final View.OnClickListener ua;
    public long va;

    static {
        ha.put(R.id.profilePic, 22);
        ha.put(R.id.endDefaultMargin, 23);
        ha.put(R.id.rateBarrier, 24);
        ha.put(R.id.bottomView, 25);
        ha.put(R.id.replyDivider, 26);
        ha.put(R.id.replyContainer, 27);
        ha.put(R.id.bottomReplyContainer, 28);
        ha.put(R.id.bottomGuidLine, 29);
    }

    public C0447nb(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 30, ga, ha));
    }

    public boolean a(int i2, Object obj) {
        if (27 == i2) {
            a((c) obj);
        } else if (29 == i2) {
            b((Integer) obj);
        } else if (10 == i2) {
            a((b) obj);
        } else if (50 == i2) {
            a((ReviewItem) obj);
        } else if (41 != i2) {
            return false;
        } else {
            a((m) obj);
        }
        return true;
    }

    public void b(Integer num) {
        this.fa = num;
        synchronized (this) {
            this.va |= 2;
        }
        a(29);
        super.k();
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        String str;
        String str2;
        String str3;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        long j3;
        boolean z7;
        long j4;
        String str4;
        String str5;
        String str6;
        boolean z8;
        String str7;
        String str8;
        String str9;
        String str10;
        VoteState voteState;
        ReplyReviewItem replyReviewItem;
        boolean z9;
        VoteState voteState2;
        int i2;
        Integer num;
        String str11;
        VoteState voteState3;
        VoteState voteState4;
        ReplyReviewItem replyReviewItem2;
        Integer num2;
        boolean z10;
        Integer num3;
        boolean z11;
        String str12;
        boolean z12;
        String str13;
        String str14;
        int i3;
        int i4;
        synchronized (this) {
            j2 = this.va;
            this.va = 0;
        }
        c cVar = this.ca;
        Integer num4 = this.fa;
        b bVar = this.da;
        ReviewItem reviewItem = this.ba;
        m mVar = this.ea;
        long j5 = 40 & j2;
        if (j5 != 0) {
            if (reviewItem != null) {
                str12 = reviewItem.getComment();
                z11 = reviewItem.getShowRate();
                z8 = reviewItem.isReplyLiked();
                num3 = reviewItem.getDislikeCount();
                z10 = reviewItem.isDisliked();
                str4 = reviewItem.getUser();
                num2 = reviewItem.getRate();
                replyReviewItem2 = reviewItem.getReplyItem();
                z7 = reviewItem.getShowLikeDislike();
                voteState4 = reviewItem.getVoteState();
                voteState3 = reviewItem.getReplyVoteState();
                z6 = reviewItem.isLiked();
                z5 = reviewItem.getShowReport();
                str11 = reviewItem.getDate();
                z4 = reviewItem.commentOnOldVersion();
                z3 = reviewItem.getShowReplyVote();
                num = reviewItem.getLikeCount();
                z12 = reviewItem.isReplyDisliked();
            } else {
                z12 = false;
                str12 = null;
                z11 = false;
                z8 = false;
                num3 = null;
                z10 = false;
                str4 = null;
                num2 = null;
                replyReviewItem2 = null;
                z7 = false;
                voteState4 = null;
                voteState3 = null;
                z6 = false;
                z5 = false;
                str11 = null;
                z4 = false;
                z3 = false;
                num = null;
            }
            String string = this.W.getResources().getString(R.string.number_placeholder, new Object[]{num3});
            int a2 = ViewDataBinding.a(num2);
            z = z12;
            String string2 = this.aa.getResources().getString(R.string.number_placeholder, new Object[]{num});
            if (replyReviewItem2 != null) {
                str10 = replyReviewItem2.getComment();
                str6 = replyReviewItem2.getDate();
                i4 = replyReviewItem2.getLikes();
                i3 = replyReviewItem2.getDislikeCount();
                str14 = replyReviewItem2.getUser();
                str13 = string2;
            } else {
                str13 = string2;
                str10 = null;
                str6 = null;
                i4 = 0;
                i3 = 0;
                str14 = null;
            }
            int i5 = a2;
            String string3 = this.T.getResources().getString(R.string.number_placeholder, new Object[]{Integer.valueOf(i4)});
            str3 = string;
            str2 = str12;
            z2 = z11;
            replyReviewItem = replyReviewItem2;
            voteState = voteState3;
            str7 = string3;
            str8 = str14;
            str = str13;
            str9 = this.Q.getResources().getString(R.string.number_placeholder, new Object[]{Integer.valueOf(i3)});
            j4 = j2;
            z9 = z10;
            voteState2 = voteState4;
            str5 = str11;
            i2 = i5;
            j3 = 0;
        } else {
            z2 = false;
            j4 = j2;
            j3 = 0;
            i2 = 0;
            voteState2 = null;
            z9 = false;
            replyReviewItem = null;
            voteState = null;
            str10 = null;
            str9 = null;
            str8 = null;
            str7 = null;
            z8 = false;
            str6 = null;
            str5 = null;
            str4 = null;
            z7 = false;
            z6 = false;
            z5 = false;
            z4 = false;
            z3 = false;
            z = false;
            str3 = null;
            str2 = null;
            str = null;
        }
        if (j5 != j3) {
            c.c.a.d.a.b.a((View) this.ja, Boolean.valueOf(z7));
            c.c.a.d.a.b.a((View) this.ka, Boolean.valueOf(z3));
            c.c.a.d.a.b.a((View) this.E, Boolean.valueOf(z4));
            f.a((TextView) this.F, (CharSequence) str4);
            c.c.a.d.a.b.a((View) this.F, str4);
            e.a(this.H, (float) i2);
            c.c.a.d.a.b.a((View) this.H, Boolean.valueOf(z2));
            c.c.a.d.a.b.a((View) this.M, replyReviewItem);
            f.a((TextView) this.N, (CharSequence) str10);
            f.a((TextView) this.O, (CharSequence) str6);
            c.c.a.b.c.a(this.P, voteState, Boolean.valueOf(z));
            f.a((TextView) this.Q, (CharSequence) str9);
            f.a((TextView) this.R, (CharSequence) str8);
            c.c.a.b.c.a(this.S, voteState, Boolean.valueOf(z8));
            f.a((TextView) this.T, (CharSequence) str7);
            f.a((TextView) this.U, (CharSequence) str5);
            c.c.a.b.c.a(this.V, voteState2, Boolean.valueOf(z9));
            f.a((TextView) this.W, (CharSequence) str3);
            c.c.a.d.a.b.a((View) this.X, Boolean.valueOf(z5));
            f.a((TextView) this.Y, (CharSequence) str2);
            c.c.a.b.c.a(this.Z, voteState2, Boolean.valueOf(z6));
            f.a((TextView) this.aa, (CharSequence) str);
        }
        if ((j4 & 32) != 0) {
            this.J.setOnClickListener(this.oa);
            this.P.setOnClickListener(this.la);
            this.Q.setOnClickListener(this.ra);
            this.S.setOnClickListener(this.pa);
            this.T.setOnClickListener(this.sa);
            this.V.setOnClickListener(this.ta);
            this.W.setOnClickListener(this.ma);
            this.X.setOnClickListener(this.na);
            this.Z.setOnClickListener(this.qa);
            this.aa.setOnClickListener(this.ua);
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.va != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.va = 32;
        }
        k();
    }

    public C0447nb(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[29], objArr[28], objArr[25], objArr[23], objArr[6], objArr[2], objArr[22], objArr[4], objArr[24], objArr[1], objArr[27], objArr[26], objArr[20], objArr[15], objArr[14], objArr[18], objArr[19], objArr[13], objArr[16], objArr[17], objArr[3], objArr[9], objArr[10], objArr[11], objArr[5], objArr[7], objArr[8]);
        this.va = -1;
        this.ia = objArr[0];
        this.ia.setTag(null);
        this.ja = objArr[12];
        this.ja.setTag(null);
        this.ka = objArr[21];
        this.ka.setTag(null);
        this.E.setTag(null);
        this.F.setTag(null);
        this.H.setTag(null);
        this.J.setTag(null);
        this.M.setTag(null);
        this.N.setTag(null);
        this.O.setTag(null);
        this.P.setTag(null);
        this.Q.setTag(null);
        this.R.setTag(null);
        this.S.setTag(null);
        this.T.setTag(null);
        this.U.setTag(null);
        this.V.setTag(null);
        this.W.setTag(null);
        this.X.setTag(null);
        this.Y.setTag(null);
        this.Z.setTag(null);
        this.aa.setTag(null);
        b(view);
        this.la = new a(this, 9);
        this.ma = new a(this, 5);
        this.na = new a(this, 6);
        this.oa = new a(this, 1);
        this.pa = new a(this, 7);
        this.qa = new a(this, 2);
        this.ra = new a(this, 10);
        this.sa = new a(this, 8);
        this.ta = new a(this, 4);
        this.ua = new a(this, 3);
        l();
    }

    public void a(c cVar) {
        this.ca = cVar;
        synchronized (this) {
            this.va |= 1;
        }
        a(27);
        super.k();
    }

    public final void b(int i2, View view) {
        boolean z = true;
        switch (i2) {
            case 1:
                ReviewItem reviewItem = this.ba;
                m mVar = this.ea;
                if (mVar == null) {
                    z = false;
                }
                if (z) {
                    mVar.a(reviewItem);
                    return;
                }
                return;
            case 2:
                c cVar = this.ca;
                Integer num = this.fa;
                ReviewItem reviewItem2 = this.ba;
                if (cVar == null) {
                    z = false;
                }
                if (z) {
                    cVar.a(reviewItem2, num.intValue());
                    return;
                }
                return;
            case 3:
                c cVar2 = this.ca;
                Integer num2 = this.fa;
                ReviewItem reviewItem3 = this.ba;
                if (cVar2 == null) {
                    z = false;
                }
                if (z) {
                    cVar2.a(reviewItem3, num2.intValue());
                    return;
                }
                return;
            case 4:
                c cVar3 = this.ca;
                Integer num3 = this.fa;
                ReviewItem reviewItem4 = this.ba;
                if (cVar3 == null) {
                    z = false;
                }
                if (z) {
                    cVar3.c(reviewItem4, num3.intValue());
                    return;
                }
                return;
            case 5:
                c cVar4 = this.ca;
                Integer num4 = this.fa;
                ReviewItem reviewItem5 = this.ba;
                if (cVar4 == null) {
                    z = false;
                }
                if (z) {
                    cVar4.c(reviewItem5, num4.intValue());
                    return;
                }
                return;
            case 6:
                ReviewItem reviewItem6 = this.ba;
                b bVar = this.da;
                if (bVar == null) {
                    z = false;
                }
                if (z) {
                    bVar.a(view, reviewItem6);
                    return;
                }
                return;
            case 7:
                c cVar5 = this.ca;
                Integer num5 = this.fa;
                ReviewItem reviewItem7 = this.ba;
                if (cVar5 == null) {
                    z = false;
                }
                if (z) {
                    cVar5.b(reviewItem7, num5.intValue());
                    return;
                }
                return;
            case 8:
                c cVar6 = this.ca;
                Integer num6 = this.fa;
                ReviewItem reviewItem8 = this.ba;
                if (cVar6 == null) {
                    z = false;
                }
                if (z) {
                    cVar6.b(reviewItem8, num6.intValue());
                    return;
                }
                return;
            case 9:
                c cVar7 = this.ca;
                Integer num7 = this.fa;
                ReviewItem reviewItem9 = this.ba;
                if (cVar7 == null) {
                    z = false;
                }
                if (z) {
                    cVar7.d(reviewItem9, num7.intValue());
                    return;
                }
                return;
            case 10:
                c cVar8 = this.ca;
                Integer num8 = this.fa;
                ReviewItem reviewItem10 = this.ba;
                if (cVar8 == null) {
                    z = false;
                }
                if (z) {
                    cVar8.d(reviewItem10, num8.intValue());
                    return;
                }
                return;
            default:
                return;
        }
    }

    public void a(b bVar) {
        this.da = bVar;
        synchronized (this) {
            this.va |= 4;
        }
        a(10);
        super.k();
    }

    public void a(ReviewItem reviewItem) {
        this.ba = reviewItem;
        synchronized (this) {
            this.va |= 8;
        }
        a(50);
        super.k();
    }

    public void a(m mVar) {
        this.ea = mVar;
        synchronized (this) {
            this.va |= 16;
        }
        a(41);
        super.k();
    }
}
