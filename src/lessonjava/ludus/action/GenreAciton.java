package lessonjava.ludus.action;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import lessonjava.ludus.dao.GenreDAO;
import lessonjava.ludus.dto.GenreDTO;

public class GenreAciton extends ActionSupport {
	List<GenreDTO> genreList = new ArrayList<>();

	public String execute() {
		GenreDAO dao= new GenreDAO();
		genreList = dao.selectGenre();
		return SUCCESS;

	}

	/**
	 * @return genreList
	 */
	public List<GenreDTO> getGenreList() {
		return genreList;
	}

	/**
	 * @param genreList セットする genreList
	 */
	public void setGenreList(List<GenreDTO> genreList) {
		this.genreList = genreList;
	}

}
